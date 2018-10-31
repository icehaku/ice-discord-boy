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

      message(contains: textAnySize("Chora Bixão"), in: discordthur ) do |event|
        event.respond "Eu sei que tu chora, chora ai :clap: :clap: :clap:"
      end

      message(contains: textAnySize("Da pra fazer?"), in: discordthur ) do |event|
        event.respond "Dá demais"
      end

      message(contains: textAnySize("Top Secret"), in: discordthur ) do |event|
        event.respond "Isso é top secret cara, conta pra ninguém não"
      end

      message(contains: textAnySize("Cidadão"), in: discordthur ) do |event|
        event.respond "Olha ai Karlos o Cidadão"
      end

      message(contains: textAnySize("teste"), in: discordthur ) do |event|
        event.respond "Testa ai agora"
      end

      message(contains: textAnySize("testa"), in: discordthur ) do |event|
        event.respond "Testa ai agora"
      end

      message(contains: textAnySize("tchau"), in: discordthur ) do |event|
        event.respond "tchaupatau"
      end

      message(contains: textAnySize("skills"), in: discordthur ) do |event|
        event.respond "tá duvidando das minhas skills?"
      end

      message(contains: textAnySize("Ganhei"), in: discordthur ) do |event|
        event.respond "Eu ganhei foi???"
      end

      message(contains: textAnySize("IPS"), in: discordthur ) do |event|
        event.respond "Karlos é que nem um laser, ele mira e atira."
      end

      message(contains: textAnySize("Tosco"), in: discordthur ) do |event|
        event.respond "Olha ai Karlos que tosco"
      end

      message(contains: textAnySize("xuas punk"), in: discordthur ) do |event|
        event.respond "Ele é punk mesmo"
      end

      message(contains: textAnySize("Stephen"), in: discordthur ) do |event|
        event.respond "Ei o Stephen é bom mesmo?"
      end

      message(contains: textAnySize("apelido"), in: discordthur ) do |event|
        event.respond "Ei vocês sabiam que apelido dele é piroca"
      end

      message(contains: textAnySize("Low Level"), in: discordthur ) do |event|
        event.respond "Isso é coisa de low level ein"
      end

      message(contains: textAnySize("rachar"), in: discordthur ) do |event|
        event.respond "Ei mah vamo rachar?"
      end

      message(contains: textAnySize("repost"), in: discordthur ) do |event|
        event.respond "https://www.youtube.com/watch?v=2F46tGehnfo"
      end

      message(contains: textAnySize("indireta"), in: discordthur ) do |event|
        event.respond "peixonauta é uma indireta schwarz"
      end

      message(contains: textAnySize("hots"), in: discordthur ) do |event|
        event.respond "Pfii que jogo tosco"
      end

    end
  end
end

