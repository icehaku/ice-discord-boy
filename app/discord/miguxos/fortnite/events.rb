def textAnySize text
  [text, text.downcase, text.upcase, text.capitalize, text.titleize]
end

module Discord
  module Miguxos
    module Fortnite
      module Events

        extend Discordrb::EventContainer

        #bot-debug: 502211507304792064
        #miguxos-fortnite-main: 470702865632198656

        miguxos_fortnite_main = 470702865632198656

        message(with_text: textAnySize("esc"), in: miguxos_fortnite_main) do |event|
          user = event.message.author.username
          event.respond "Aperta esc aew #{user}! :brush:"
        end

        message(with_text: textAnySize("daciolo"), in: miguxos_fortnite_main) do |event|
          event.respond "Gloria a DEUXXSSSS :gloriaadeuxx2:"
        end

        message(with_text: textAnySize("diga"), in: miguxos_fortnite_main) do |event|
          event.respond "me diga entao, me entao... :justiadokira: :MOJUSTICEIRA:"
        end

        message(with_text: textAnySize("ak"), in: miguxos_fortnite_main) do |event|
          event.respond "duas ak 45 pente alongado :BAGUNCINHA: :AK45:"
        end

        message(with_text: textAnySize("money"), in: miguxos_fortnite_main) do |event|
          event.respond ":SHUTUPANDTAKEMYMONEY:"
        end

        message(with_text: textAnySize("anao"), in: miguxos_fortnite_main) do |event|
          event.respond ":anao: :ahnao:"
        end

        message(with_text: textAnySize("atapo"), in: miguxos_fortnite_main) do |event|
          event.respond ":atapo:"
        end

        message(with_text: textAnySize("cigarro"), in: miguxos_fortnite_main) do |event|
          event.respond "vo ali com um cigarro, volto jah :derby"
        end

      end
    end
  end
end
