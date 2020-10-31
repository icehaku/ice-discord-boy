def textAnySize text
  regex_string = '\b('+text+'|'+text.downcase+'|'+text.upcase+'|'+text.capitalize+'|'+text.titleize+')\b'
  Regexp.new regex_string
end

module Discord
  module Miguxos
    module Events
      extend Discordrb::EventContainer

      miguxos = 111701169704841216

      message(contains: textAnySize("arte"), in: miguxos ) do |event|
        event.respond "É impossível dizer o que é Arte. ESTUDOU ARTE, cara que nunca."
      end

      message(contains: textAnySize("menos ruim"), in: miguxos ) do |event|
        event.respond "Documento explicando pra qualquer imbecil entender de porque Bolsonaro não era menos ruim que ninguém:
  https://flaviobolsonaro.com/PLANO_DE_GOVERNO_JAIR_BOLSONARO_2018.pdf"
      end
    end
  end
end

