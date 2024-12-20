module AiAssistantRuby
  module Geter
    module Private
      class GoogleClient
        def initialize(client = nil)
          @client = client || default_client
        end

        private

        def default_client
          # TODO
        end
      end
    end
  end
end
