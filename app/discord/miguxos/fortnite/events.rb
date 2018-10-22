def textAnySize text
  [text, text.downcase, text.upcase, text.capitalize, text.titleize]
end

module Discord
  module Miguxos
    module Fortnite
      module Events

        extend Discordrb::EventContainer

        #bot-debug: 503762979112615937
        #miguxos-fortnite-main: 503548992995721217

        bot_debug = 503762979112615937
        miguxos_fortnite_main = 503548992995721217

        message(with_text: textAnySize("lol"), in: bot_debug) do |event|
          event.respond "omegalul"
        end

        message(with_text: textAnySize("esc"), in: [miguxos_fortnite_main, bot_debug]) do |event|
          user = event.message.author.username
          event.respond "Aperta esc aew #{user}!"
        end

        message(with_text: textAnySize("daciolo"), in: miguxos_fortnite_main) do |event|
          event.respond "Gloria a DEUXXSSSS"
        end

        message(with_text: textAnySize("diga"), in: miguxos_fortnite_main) do |event|
          event.respond "me diga entao, me entao..."
        end

        message(with_text: textAnySize("ak"), in: miguxos_fortnite_main) do |event|
          event.respond "duas ak 45 pente alongado..."
        end

        message(with_text: textAnySize("cigarro"), in: miguxos_fortnite_main) do |event|
          event.respond "vo ali com um cigarro, volto jah..."
        end

        message(with_text: textAnySize("=O"), in: miguxos_fortnite_main) do |event|
          event.respond "https://imgur.com/a/qWmxO4M"
        end

        message(with_text: textAnySize(":O"), in: miguxos_fortnite_main) do |event|
          event.respond "https://imgur.com/a/qWmxO4M"
        end

        message(with_text: textAnySize("tururu"), in: miguxos_fortnite_main) do |event|
          event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
        end

        message(with_text: textAnySize("sad"), in: miguxos_fortnite_main) do |event|
          event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
        end

        message(with_text: textAnySize("triste"), in: miguxos_fortnite_main) do |event|
          event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
        end

        message(with_text: textAnySize("anao"), in: miguxos_fortnite_main) do |event|
          event.respond "anao"
        end

        message(with_text: textAnySize("atapo"), in: miguxos_fortnite_main) do |event|
          event.respond "atapo"
        end

      end
    end
  end
end
