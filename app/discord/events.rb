module Discord
  module Events
    extend Discordrb::EventContainer

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end
    
    bot.message(with_text: "Ping!") do |event|
      event.respond "Pong!"
    end    
  end
end
