require 'nokogiri'
require 'open-uri'

module Discord
  module Miguxos
    module Genshin
      module Commands

        extend Discordrb::Commands::CommandContainer

        command :genshin do |event|
          event.respond "Lista"
          event.respond "Uteis"
        end

      end
    end
  end
end
