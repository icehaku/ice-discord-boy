require 'nokogiri'
require 'open-uri'

module Discord
  module Miguxos
    module Apex
      module Commands

        extend Discordrb::Commands::CommandContainer

        command :apex do |event|
          user = event.content.gsub("!stats ", "")
          base = "https://public-api.tracker.gg/apex/v1/standard/profile/5/"
          headers = {"TRN-Api-Key"=>"a2b40d7b-41f0-4d37-9a84-07a5ec55b69c"}

          result = HTTParty.get("#{base}/#{user}", headers: headers).body
          result = JSON.parse(result)

          if result["errors"].present?
            "Num existe esse user nao minha joia..."
          else
            player_info = "**[Player Info]______**\n"
            player_info += "Nome: "+result["data"]["metadata"]["platformUserHandle"]+", Level: "+result["data"]["metadata"]["level"].to_s+"\n"
            player_info += "Total Kills: "+ result["data"]["stats"][1]["displayValue"].to_s+"\n"
            player_info += "Total Kills Rank: "+ result["data"]["stats"][1]["displayRank"].to_s+"\n" if result["data"]["stats"][1]["displayRank"].present?
            player_info += "Total Damage: "+ result["data"]["stats"][2]["displayValue"].to_s+"\n"
            player_info += "Total Damage Rank: "+ result["data"]["stats"][2]["displayRank"].to_s+"\n" if result["data"]["stats"][2]["displayRank"].present?
            event.respond player_info

            player_legends_info = "**[Main Legend(s) Info]____________**"+"\n"
            result["data"]["children"].each do |legend|
              player_legends_info += ">__"+legend['metadata']['legend_name']+"__\n"
              if legend["stats"][0].present?
                player_legends_info += "Kills: "+legend["stats"][0]["displayValue"].to_s+"\n" if legend["stats"][0]["displayValue"].present?
                player_legends_info += "Kills Rank: "+legend["stats"][0]["displayRank"].to_s+"\n" if legend["stats"][0]["displayRank"].present?
              end

              if legend["stats"][1].present?
                player_legends_info += "Damage: "+legend["stats"][1]["displayValue"].to_s+"\n" if legend["stats"][1]["displayValue"].present?
                player_legends_info += "Damage Rank: "+legend["stats"][1]["displayRank"].to_s+"\n" if legend["stats"][1]["displayRank"].present?
              end
            end
            event.respond player_legends_info
          end

          event.respond result["data"]["children"][0]["metadata"]["bgimage"]
          event.respond "```ps: a fonte dos dados não é oficial, logo, pode ter incoerências...```"
        end #end command stats
      end
    end
  end
end
