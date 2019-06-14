require 'nokogiri'
require 'open-uri'

module Discord
  module Miguxos
    module Fortnite
      module Commands

        extend Discordrb::Commands::CommandContainer

        #fortnite store channel: 551048576277545000
        #bot-debug : 503762979112615937
        command(:fortstore) do |event|
          return unless event.channel.id == 551048576277545000
          url = "https://fortnite-public-api.theapinetwork.com/prod09/store/get?language=en"
          result = HTTParty.get(url).body
          result = JSON.parse(result)

          if result["error"].present?
            event.respond result["errorMessage"]
          else
            event.respond "PREPARA A CARTEIRA ARROMBADO!!!11"
            result["items"].each do |item|
              # VIA SEND IMAGE
              # image_url  = item["item"]["images"]["information"] rescue nil
              # image_name = "#{item["name"]}.png" rescue "temp.png"
              # if image_url.present?
              #   open(image_name, 'wb') do |local_file|
              #     local_file << open(image_url).read
              #     $bot.send_file(event.channel.id, File.open(local_file.path,'r'))
              #     File.delete(local_file.path) if File.exist?(local_file.path)
              #   end
              # end

              #VIA URL SECA
              begin
                images = ""
                images += item["item"]["images"]["information"]+"\n" if item["item"]["images"]["information"].present?
                images += item["youtube"]+"\n" if item["youtube"].present?
                event.respond images
              rescue; end
            end
            event.respond "POR HOJE É SÓ MIA JOIA!"
          end
        end #end command fortstore

        command(:fortcoming) do |event|
          return unless event.channel.id == 551048576277545000
          url = "https://fortnite-public-api.theapinetwork.com/prod09/upcoming/get"
          result = HTTParty.get(url).body
          result = JSON.parse(result)

          if result["error"].present?
            event.respond result["errorMessage"]
          else
            begin
              result["items"].each do |item|
                event.respond item["item"]["images"]["information"]
              end
            rescue Exception => erro
              event.respond "EEEEETA PORRA, deu erro aqui, avisa ao mestre ice o erro é esse: "+erro.message
            end
          end
        end  #end command fortcoming
      end
    end
  end
end
