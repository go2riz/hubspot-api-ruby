require_rel '../../../base_module_client'

module Hubspot
  module Discovery
    module Crm
      module Objects
        module Tasks
          class Client
            def self.api_classes
              %i[
                associations
                basic
                batch
                public_object
                search
              ].freeze
            end
    
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
