module Discord
  module Miguxos
    module Fortnite
      module Events

        extend Discordrb::EventContainer

        #bot-debug: 503762979112615937
        #miguxos-fortnite-main: 503548992995721217
        #miguxos-server: 111701169704841216

        bot_debug = 503762979112615937
        miguxos_fortnite_main = 503548992995721217

        message(contains: textAnySize("lol"), in: bot_debug) do |event|
          event.respond "omegalul"
        end

        message(contains: textAnySize("esc"), in: [miguxos_fortnite_main, bot_debug]) do |event|
          user = event.message.author.username
          event.respond "Aperta esc aew #{user}!"
        end

        message(contains: textAnySize("daciolo"), in: miguxos_fortnite_main) do |event|
          event.respond "Gloria a DEUXXSSSS"
        end

        message(contains: textAnySize("diga"), in: miguxos_fortnite_main) do |event|
          event.respond "me diga entao, me entao..."
        end

        message(contains: textAnySize("ak"), in: miguxos_fortnite_main) do |event|
          event.respond "duas ak 45 pente alongado..."
        end

        message(contains: textAnySize("cigarro"), in: miguxos_fortnite_main) do |event|
          event.respond "vo ali com um cigarro, volto jah..."
        end

        message(contains: textAnySize("anao"), in: miguxos_fortnite_main) do |event|
          event.respond "anao"
        end

        message(contains: textAnySize("atapo"), in: miguxos_fortnite_main) do |event|
          event.respond "atapo"
        end

        message(contains: textAnySize("goblin"), in: miguxos_fortnite_main) do |event|
          event.respond "https://i.imgur.com/2xvsG7L.png"
        end

        message(contains: textAnySize("de 4"), in: miguxos_fortnite_main) do |event|
          event.respond "Se eu for dormir 10hs eu acordo de 4. GAMEPLAY, Larke"
        end

        message(contains: textAnySize("de quatro"), in: miguxos_fortnite_main) do |event|
          event.respond "Se eu for dormir 10hs eu acordo de 4. GAMEPLAY, Larke"
        end

      end
    end
  end
end
