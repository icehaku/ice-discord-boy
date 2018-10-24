module Discord
  module Events
    extend Discordrb::EventContainer

    #bot-debug: 502211507304792064

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end

    message(with_text: "Debug!", from: 111699525629943808) do |event|
      binding.pry
      event.respond "Debugado!"
    end

    message(with_text: "Ping!") do |event|
      event.respond "Pong!"
    end

    message(with_text: textAnySize("mundo da voltas")) do |event|
      event.respond "https://imgur.com/a/nWQhHAZ"
    end

    message(with_text: textAnySize("mundo_voltas")) do |event|
      event.respond "https://imgur.com/a/nWQhHAZ"
    end

    message(with_text: textAnySize("jogo_virou")) do |event|
      event.respond "https://imgur.com/a/GamGTH8"
    end

    message(with_text: textAnySize("jogo virou")) do |event|
      event.respond "https://imgur.com/a/GamGTH8"
    end

    message(with_text: textAnySize("=Opika")) do |event|
      event.respond "https://imgur.com/a/qWmxO4M"
    end

    message(with_text: textAnySize("tururu")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(with_text: textAnySize("sad")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(with_text: textAnySize("triste")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(with_text: textAnySize("pare")) do |event|
      event.respond "https://imgur.com/a/KTywwYA"
    end

  end
end
