module Discord
  module Playing
    extend Discordrb::EventContainer

    #bot-debug: 502211507304792064
    #ice-user:  111699525629943808
    miguxos_server = 111701169704841216

    playing do |event|
      event_server = event.server
      if event_server .id == miguxos_server && event.game == 'Fortnite'
        event_user   = event.user
        event_member = event_user.on(event_server)
        to_add       = event_server.roles.find {|role| role.name == 'Fortnite'}
        event_member.add_role(to_add)
      end
    end

  end
end
