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
    
    message(contains: textAnySize("plantao")) do |event|
      event.respond "https://www.youtube.com/watch?v=7DYomde2YEc"
    end
    
    message(contains: textAnySize("hacker")) do |event|
      event.respond "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQebfDHU5W9dp59HyP8A9lTV7mcQKstZ5UZy_Zf-IM8bhCtsDnQ2Q"
    end    

    message(contains: textAnySize("hackerman")) do |event|
      event.respond "https://i.kym-cdn.com/photos/images/newsfeed/001/176/251/4d7.png"
    end     

    message(contains: textAnySize("já morreu")) do |event|
      event.respond "http://i.imgur.com/kn6bR1U.png"
    end           
    
    message(contains: textAnySize("ja morreu")) do |event|
      event.respond "http://i.imgur.com/kn6bR1U.png"
    end        
    
    message(contains: textAnySize("vai da merda")) do |event|
      event.respond "https://youtu.be/c5ZRjdlLMEM"
    end             
    
    message(contains: textAnySize("84 anos")) do |event|
      event.respond "https://imgur.com/a/KEPiJ4N"
    end        
        
    message(contains: textAnySize("já fazem")) do |event|
      event.respond "https://imgur.com/a/KEPiJ4N"
    end
    
    message(contains: textAnySize("briguem")) do |event|
      event.respond "https://imgur.com/a/KbZRKds"
    end      
    
    message(contains: textAnySize("como eu sou bonito")) do |event|
      event.respond "https://www.youtube.com/watch?v=lL_c7AZLxgM"
      event.respond "Meus deus todo poderoso, como eu sou bonito, como sou forte."
      event.respond "Sim mais do que qualquer outra coisa da terra, a lua, as estrelas o sol brilhante, sao insignificantes diantes de mim."
      event.respond " Nada eh mais bonito que eu."      
    end     
    
    
  end
end
