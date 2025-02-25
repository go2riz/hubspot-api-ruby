require_rel '../../../base_module_client'

module Hubspot
  module Discovery
    module Cms
      module Blogs
        module BlogPosts
          class Client
            def self.api_classes
              %i[
                blog_posts
              ].freeze
            end
  
            include Hubspot::Discovery::BaseModuleClient
          end
        end
      end
    end
  end
end
