module Discord
  module Events
    extend Discordrb::EventContainer

    #bot-debug: 502211507304792064

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end

    message(with_text: "Debug!", from: 111699525629943808) do |event|
      #binding.pry
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

    message(contains: textAnySize("pikachuo")) do |event|
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

    message(contains: textAnySize("pare")) do |event|
      event.respond "https://imgur.com/a/KTywwYA"
    end

    message(contains: textAnySize("gloria")) do |event|
      event.respond "Gloria a DEUXXSSSS"
    end

    message(contains: textAnySize("kkk")) do |event|
      event.respond "eae man kkk"
    end
    
    message(contains: textAnySize("eomegalule")) do |event|
      event.respond "https://i.imgur.com/jYtfRix.jpg"
    end    
    
    message(contains: textAnySize("um momento")) do |event|
      event.respond "https://imgur.com/a/pRBvmkR"
    end            

    message(contains: textAnySize("ta safe")) do |event|
      event.respond "ta safe neh? https://i.imgur.com/54IxgZb.png"
    end      
    
  end
end
