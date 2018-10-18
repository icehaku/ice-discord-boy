module Discord
  module Events
    extend Discordrb::EventContainer

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end

    message(with_text: "Ping!") do |event|
      event.respond "Pong!"
    end

    message(with_text: "Debug!") do |event|
      binding.pry if configatron.app.env == "development"
      event.respond "Debugado!"
    end

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

def have_attachment? event
  event.message.attachments.present?
end

def event_send_attachments event, destiny
  event.message.attachments.each do |file|
    $bot.send_message destiny, file.url
  end
end

def event2message event
  server  = event.server.name
  message = event.message.content
  author  = event.message.author.username

  return "Rift Origem: #{server}, por #{author}:\n#{message}"
end
