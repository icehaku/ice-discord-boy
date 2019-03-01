require 'open-uri'

module Discord
  module Rifts
    module Events
      extend Discordrb::EventContainer

      #bot-debug: 503762979112615937
      #memes-discordthur 503768374325674004
      #miguxos-memes 503546722539143190

      #Discordthur to Miguxos
      message(in: 503768374325674004) do |event|
        server  = event.server.name
        message = event.message.content
        author  = event.message.author.username
        $bot.send_message 503546722539143190, event2message(event)
        event_send_attachments(event, 503546722539143190) if have_attachment?(event)
      end

      #Miguxos to Discordthur
      message(in: 503546722539143190) do |event|
        server  = event.server.name
        message = event.message.content
        author  = event.message.author.username
        $bot.send_message 503768374325674004, event2message(event)
        event_send_attachments(event, 503768374325674004) if have_attachment?(event)
      end
    end
  end
end

def have_attachment? event
  event.message.attachments.present?
end

def event_send_attachments event, destiny
  event.message.attachments.each do |file|
    url      = file.url
    filename = file.filename
    open(filename, 'wb') do |local_file|
      local_file << open(url).read
      $bot.send_file(destiny, File.open(local_file.path,'r'))
      File.delete(local_file.path) if File.exist?(local_file.path)
    end
  end
end

def event2message event
  server  = event.server.name
  message = event.message.content
  author  = event.message.author.username

  return "**Rift Origem: #{server}, por #{author}:**\n#{message}"
end
