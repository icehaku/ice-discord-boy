require 'nokogiri'
require 'open-uri'

module Discord
  module Miguxos
    module Genshin
      module Commands

        extend Discordrb::Commands::CommandContainer

        command :genshin do |event|
          event.respond "Interactive Map"
          event.respond "https://genshin-impact-map.appsample.com/#/"

          event.respond "Artifact Role Guide"
          event.respond "https://imgur.com/a/1lCe9Q9"

          event.respond "Daily Tasks Guide"
          event.respond "https://imgur.com/a/1lCe9Q9"

          event.respond "Ascencion Material Guides"
          event.respond "https://imgur.com/a/eVOqMWm"

          event.respond "Cogumelo Route"
          event.respond "https://imgur.com/a/MDewIxb"

          event.respond "Daily Domain"
          event.respond "https://imgur.com/a/bUJ6rJW"

          event.respond "Element Reaction Guide"
          event.respond "https://imgur.com/a/mkclMXG"

          event.respond "Mining Routes"
          event.respond "https://fragstrat.com/genshin-impact/best-mining-route-for-crystal-chunk"

          event.respond "Star Conchs Route"
          event.respond "https://www.reddit.com/r/Genshin_Impact/comments/jir3vr/you_can_get_4550_star_conchs_in_10_minutes_for/"

          event.respond "Ascension Planner/Damage Calculator"
          event.respond "https://genshin-center.com/"

          event.respond "Elite Route"
          event.respond "https://i.redd.it/fnyxvl22ytv51.png"

          event.respond "Liyue Specialities Route"
          event.respond "https://www.reddit.com/r/Genshin_Impact/comments/jjw2pe/liyue_100_specialities_farming_route_in_15_minutes/"
        end
      end
    end
  end
end
