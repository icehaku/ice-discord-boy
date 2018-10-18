module Discord
  module Commands
    extend Discordrb::Commands::CommandContainer

    @admin_roles = []

    desc = "pong!"
    command :ping, description: desc do |event|
      "pong! (#{Time.now - event.timestamp}s)"
    end

    # Meant to use locally only.
    command :debug, help_available: false do |event, *args|
      return "Nope!" unless configatron.app.env == "development"
      binding.pry
    end
  end
end
