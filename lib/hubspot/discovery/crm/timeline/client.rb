require_rel '../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Timeline
        class Client
          def self.api_classes
            %i[
              events
              templates
              tokens
            ].freeze
          end
  
          include Hubspot::Discovery::BaseModuleClient
        end
      end
    end
  end
end
