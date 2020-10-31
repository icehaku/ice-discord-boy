require 'nokogiri'
require 'open-uri'

module Discord
  module Miguxos
    module Genshin
      module Commands

        extend Discordrb::Commands::CommandContainer

        command :genshin do |event|
          the_command = "lul"
          the_command = event.content.gsub("!genshin", "").gsub(" ", "")

          case the_command
          when "map"
            event.respond "https://genshin-impact-map.appsample.com/#/"
          when "artifacts"
            event.respond "https://imgur.com/a/1lCe9Q9"
          when "dailies"
            event.respond "https://imgur.com/a/1lCe9Q9"
          when "ascension_material"
            event.respond "https://imgur.com/a/eVOqMWm"
          when "cogumelao"
            event.respond "https://imgur.com/a/MDewIxb"
          when "daily_domains"
            event.respond "https://imgur.com/a/bUJ6rJW"
          when "reaction"
            event.respond "https://imgur.com/a/mkclMXG"
          when "mining"
            event.respond "https://fragstrat.com/genshin-impact/best-mining-route-for-crystal-chunk"
          when "stars"
            event.respond "https://www.reddit.com/r/Genshin_Impact/comments/jir3vr/you_can_get_4550_star_conchs_in_10_minutes_for/"
          when "planner" || "calculator"
            event.respond "https://genshin-center.com/"
          when "elites"
            event.respond "https://i.redd.it/fnyxvl22ytv51.png"
          when "liyue_specials"
            event.respond "https://www.reddit.com/r/Genshin_Impact/comments/jjw2pe/liyue_100_specialities_farming_route_in_15_minutes/"
          else
            event.respond "Lista de commandos:
  map, Interactive Map
  artifacts, Artifact Role Guide
  dailies, Daily Tasks Guide
  ascension_material, Ascension Material Guides
  cogumelao, Cogumelao Route
  daily_domains, Daily Domains
  mining, Mining Routes
  stars, Star Conchs Route
  planner ou calculator, Ascension Planner/Damage Calculator
  elites, Elite Route
  liyue_specials, Liyue Specialities Route"
          end

        end
      end
    end
  end
end
