def textAnySize text
  [text, text.downcase, text.upcase, text.capitalize, text.titleize]
end

module Discord
  module Ababot
    module Events
      extend Discordrb::EventContainer

      #general-discordthur: 503540635232370688
      #bot-debug: 503762979112615937

      discordthur = 503540635232370688

      message(with_text: textAnySize("Chora Bixão"), in: discordthur ) do |event|
        event.respond "Eu sei que tu chora, chora ai :clap: :clap: :clap:"
      end

      message(with_text: textAnySize("Da pra fazer?"), in: discordthur ) do |event|
        event.respond "Dá demais"
      end

      message(with_text: textAnySize("Top Secret"), in: discordthur ) do |event|
        event.respond "Isso é top secret cara, conta pra ninguém não"
      end

      message(with_text: textAnySize("Cidadão"), in: discordthur ) do |event|
        event.respond "Olha ai Karlos o Cidadão"
      end

      message(with_text: textAnySize("teste"), in: discordthur ) do |event|
        event.respond "Testa ai agora"
      end

      message(with_text: textAnySize("testa"), in: discordthur ) do |event|
        event.respond "Testa ai agora"
      end

      message(with_text: textAnySize("tchau"), in: discordthur ) do |event|
        event.respond "tchaupatau"
      end

      message(with_text: textAnySize("skills"), in: discordthur ) do |event|
        event.respond "tá duvidando das minhas skills?"
      end

      message(with_text: textAnySize("Ganhei"), in: discordthur ) do |event|
        event.respond "Eu ganhei foi???"
      end

      message(with_text: textAnySize("IPS"), in: discordthur ) do |event|
        event.respond "Karlos é que nem um laser, ele mira e atira."
      end

      message(with_text: textAnySize("Tosco"), in: discordthur ) do |event|
        event.respond "Olha ai Karlos que tosco"
      end

      message(with_text: textAnySize("xuas punk"), in: discordthur ) do |event|
        event.respond "Ele é punk mesmo"
      end

      message(with_text: textAnySize("Stephen"), in: discordthur ) do |event|
        event.respond "Ei o Stephen é bom mesmo?"
      end

      message(with_text: textAnySize("apelido"), in: discordthur ) do |event|
        event.respond "Ei vocês sabiam que apelido dele é piroca"
      end

      message(with_text: textAnySize("Low Level"), in: discordthur ) do |event|
        event.respond "Isso é coisa de low level ein"
      end

      message(with_text: textAnySize("rachar"), in: discordthur ) do |event|
        event.respond "Ei mah vamo rachar?"
      end

      message(with_text: textAnySize("repost"), in: discordthur ) do |event|
        event.respond "https://www.youtube.com/watch?v=2F46tGehnfo"
      end

      message(with_text: textAnySize("indireta"), in: discordthur ) do |event|
        event.respond "peixonauta é uma indireta schwarz"
      end

      message(with_text: textAnySize("hots"), in: discordthur ) do |event|
        event.respond "Pfii que jogo tosco"
      end
    end
  end
end

