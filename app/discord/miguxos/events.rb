def textAnySize text
  regex_string = '\b('+text+'|'+text.downcase+'|'+text.upcase+'|'+text.capitalize+'|'+text.titleize+')\b'
  Regexp.new regex_string
end

module Discord
  module Miguxos
    module Events
      extend Discordrb::EventContainer

      ready do |event|
        event.bot.game = configatron.discord.bot_game
      end

      miguxos = 111701169704841216

      message(contains: textAnySize("arte"), in: miguxos ) do |event|
        event.respond "É impossível dizer o que é Arte. ESTUDOU ARTE, cara que nunca."
      end

      message(contains: textAnySize("menos ruim"), in: miguxos ) do |event|
        event.respond "Documento explicando pra qualquer imbecil entender de porque Bolsonaro não era menos ruim que ninguém:
  https://flaviobolsonaro.com/PLANO_DE_GOVERNO_JAIR_BOLSONARO_2018.pdf"
      end

        message(contains: textAnySize("esc"), in: miguxos) do |event|
          user = event.message.author.username
          event.respond "Aperta esc aew #{user}!"
        end

        message(contains: textAnySize("daciolo"), in: miguxos) do |event|
          event.respond "Gloria a DEUXXSSSS"
        end

        message(contains: textAnySize("diga"), in: miguxos) do |event|
          event.respond "me diga entao, me entao..."
        end

        message(contains: textAnySize("ak"), in: miguxos) do |event|
          event.respond "duas ak 45 pente alongado..."
        end

        message(contains: textAnySize("cigarro"), in: miguxos) do |event|
          event.respond "vo ali com um cigarro, volto jah..."
        end

        message(contains: textAnySize("anao"), in: miguxos) do |event|
          event.respond "anao"
        end

        message(contains: textAnySize("atapo"), in: miguxos) do |event|
          event.respond "atapo"
        end

        message(contains: textAnySize("goblin"), in: miguxos) do |event|
          event.respond "https://i.imgur.com/2xvsG7L.png"
        end

        message(contains: textAnySize("de 4"), in: miguxos) do |event|
          event.respond "Se eu for dormir 10hs eu acordo de 4. GAMEPLAY, Larke"
        end

        message(contains: textAnySize("de quatro"), in: miguxos) do |event|
          event.respond "Se eu for dormir 10hs eu acordo de 4. GAMEPLAY, Larke"
        end
    end
  end
end

