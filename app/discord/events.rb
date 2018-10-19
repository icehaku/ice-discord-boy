module Discord
  module Events
    extend Discordrb::EventContainer

    #bot-debug: 502211507304792064

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end

    message(with_text: "Ping!") do |event|
      event.respond "Pong!"
    end

    message(with_text: "Debug!", from: 111699525629943808) do |event|
      binding.pry
      event.respond "Debugado!"
    end

  end
end
