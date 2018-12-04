require 'nokogiri'
require 'open-uri'

module Discord
  module Miguxos
    module Artifact
      module Commands

        extend Discordrb::Commands::CommandContainer

        command :deck do |event|
          base = "https://www.playartifact.com/d/"
          code = event.content.gsub("!deck ", "")
          url  = "#{base}#{code}"
          doc  = Nokogiri::HTML.parse(open(url))

          if doc.title.include?("Artifact Deck")
            url
          else
            "Num existe esse deck nao minha joia..."
          end
        end

      end
    end
  end
end
