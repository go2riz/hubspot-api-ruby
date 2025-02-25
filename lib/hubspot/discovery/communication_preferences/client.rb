require_rel '../base_module_client'

module Hubspot
  module Discovery
    module CommunicationPreferences
      class Client
        def self.api_classes
          %i[
            definition
            status
          ].freeze
        end

        include Hubspot::Discovery::BaseModuleClient
      end
    end
  end
end
