module Discord
  module Events
    extend Discordrb::EventContainer

    #bot-debug: 502211507304792064

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end

    message(with_text: "Debug!", from: 111699525629943808) do |event|
      event.respond "Debugado!"
    end

    message(with_text: "Ping!") do |event|
      event.respond "Pong!"
    end

    message(contains: textAnySize("mundo da voltas")) do |event|
      event.respond "https://imgur.com/a/nWQhHAZ"
    end

    message(contains: textAnySize("jogo virou")) do |event|
      event.respond "https://imgur.com/a/GamGTH8"
    end

    message(contains: textAnySize("=Opika")) do |event|
      event.respond "https://imgur.com/a/qWmxO4M"
    end

    message(contains: textAnySize("triste")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(contains: textAnySize(" sad ")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(contains: textAnySize("tururu")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(contains: '\bpare\b' do |event|
      event.respond "https://imgur.com/a/KTywwYA"
    end

    message(contains: textAnySize("gloria")) do |event|
      event.respond "Gloria a DEUXXSSSS"
    end

    message(contains: textAnySize("kkk")) do |event|
      event.respond "eae man kkk"
    end

  end
end
