require 'nokogiri'
require 'open-uri'
require 'webdrivers'
require 'watir'


module Discord
  module Events
    extend Discordrb::EventContainer

    ready do |event|
      event.bot.game = configatron.discord.bot_game
    end

    message(with_text: "Debug!") do |event|
      #binding.pry
      #event.respond "Debugado!"
    end

    #DEPRECADO
#    message(with_text: "!soupobre") do |event|
#      url = "https://www.stormshield.one/missions?missions_grid%5Breward_one%5D=MtxGiveaway"
#      event.respond "Vou tentar aqui seu fudido de merda, espera aew..."
#      browser = Watir::Browser.new
#      browser.goto url
#      event.respond "opa!"
#      doc = Nokogiri::HTML.parse(browser.html)
#      binding.pry
#      doc.search("table").search("tr").each do |missao|
#        html = doc.search("table").search("tr")[0].to_s
#        event.respond html
#      end
#    end

    message(with_text: "Ping!") do |event|
      event.respond "Pong!"
    end

    message(contains: textAnySize("mundo da voltas")) do |event|
      event.respond "https://imgur.com/a/nWQhHAZ"
    end

    message(contains: textAnySize("jogo virou")) do |event|
      event.respond "https://imgur.com/a/GamGTH8"
    end

    message(contains: textAnySize("pikachuo")) do |event|
      event.respond "https://imgur.com/a/qWmxO4M"
    end

    message(contains: textAnySize("triste")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(contains: textAnySize(" sad ")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(contains: textAnySize("tururu")) do |event|
      event.respond "https://www.youtube.com/watch?v=wEWF2xh5E8s"
    end

    message(contains: textAnySize("pare")) do |event|
      event.respond "https://imgur.com/a/KTywwYA"
    end

    message(contains: textAnySize("gloria")) do |event|
      event.respond "Gloria a DEUXXSSSS"
    end

    message(contains: textAnySize("kkk")) do |event|
      event.respond "eae man kkk"
    end

    message(contains: textAnySize("eomegalule")) do |event|
      event.respond "https://i.imgur.com/jYtfRix.jpg"
    end

    message(contains: textAnySize("um momento")) do |event|
      event.respond "https://imgur.com/a/pRBvmkR"
    end

    message(contains: textAnySize("ta safe")) do |event|
      event.respond "ta safe neh? https://i.imgur.com/54IxgZb.png"
    end

    message(contains: textAnySize("marrapais")) do |event|
      event.respond "http://i.imgur.com/rF2HBBz.png"
    end

    message(contains: textAnySize("plantão")) do |event|
      event.respond "https://www.youtube.com/watch?v=7DYomde2YEc"
    end

  end
end
