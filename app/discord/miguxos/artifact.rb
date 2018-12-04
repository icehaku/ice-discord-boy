module Discord
  module Miguxos
    module Artifact
      extend Discordrb::EventContainer

      #miguxos_artifact_main = 517321967339175937
      command :deck do |event|
        "pong! (#{Time.now - event.timestamp}s)"
      end
    end
  end
end
