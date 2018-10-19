require 'open-uri'

module Discord
  module Rifts
    module Events
      extend Discordrb::EventContainer

      #rift miguxos: 502239283248103454
      #rift ICE: 502239603747454979
      #bot-debug: 502211507304792064
      #memes-discordthur 502295021190643712
      #miguxos-memes 440359603742572555

      #Discordthur to Miguxos
      message(in: 502295021190643712) do |event|
        server  = event.server.name
        message = event.message.content
        author  = event.message.author.username
        $bot.send_message 440359603742572555, event2message(event)
        event_send_attachments(event, 440359603742572555) if have_attachment?(event)
      end

      #Miguxos to Discordthur
      message(in: 440359603742572555) do |event|
        server  = event.server.name
        message = event.message.content
        author  = event.message.author.username
        $bot.send_message 502295021190643712, event2message(event)
        event_send_attachments(event, 502295021190643712) if have_attachment?(event)
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

  return "Rift Origem: #{server}, por #{author}:\n#{message}"
end
