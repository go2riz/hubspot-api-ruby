=begin
#Blog Post endpoints

#\"Use these endpoints for interacting with Blog Posts, Blog Authors, and Blog Tags\"

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Cms
    module Blogs
      module Authors
        class DefaultApi
          attr_accessor :api_client

          def initialize(api_client = ApiClient.default)
            @api_client = api_client
          end
          # Delete a Blog Author
          # Delete the Blog Author object identified by the id in the path.
          # @param object_id [String] The Blog Author id.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Whether to return only results that have been archived.
          # @return [nil]
          def archive(object_id, opts = {})
            archive_with_http_info(object_id, opts)
            nil
          end

          # Delete a Blog Author
          # Delete the Blog Author object identified by the id in the path.
          # @param object_id [String] The Blog Author id.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Whether to return only results that have been archived.
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def archive_with_http_info(object_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.archive ...'
            end
            # verify the required parameter 'object_id' is set
            if @api_client.config.client_side_validation && object_id.nil?
              fail ArgumentError, "Missing the required parameter 'object_id' when calling DefaultApi.archive"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/{objectId}'.sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s))

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] 

            # return_type
            return_type = opts[:return_type] 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#archive\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Archive a batch of Blog Authors
          # Archive the Blog Author objects identified in the request body.
          # @param batch_input_string [BatchInputString] The JSON array of Blog Author ids.
          # @param [Hash] opts the optional parameters
          # @return [nil]
          def archive_batch(batch_input_string, opts = {})
            archive_batch_with_http_info(batch_input_string, opts)
            nil
          end

          # Archive a batch of Blog Authors
          # Archive the Blog Author objects identified in the request body.
          # @param batch_input_string [BatchInputString] The JSON array of Blog Author ids.
          # @param [Hash] opts the optional parameters
          # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
          def archive_batch_with_http_info(batch_input_string, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.archive_batch ...'
            end
            # verify the required parameter 'batch_input_string' is set
            if @api_client.config.client_side_validation && batch_input_string.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_string' when calling DefaultApi.archive_batch"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/batch/archive'

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(batch_input_string) 

            # return_type
            return_type = opts[:return_type] 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#archive_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Create a new Blog Author
          # Create a new Blog Author.
          # @param blog_author [BlogAuthor] The JSON representation of a new Blog Author.
          # @param [Hash] opts the optional parameters
          # @return [BlogAuthor]
          def create(blog_author, opts = {})
            data, _status_code, _headers = create_with_http_info(blog_author, opts)
            data
          end

          # Create a new Blog Author
          # Create a new Blog Author.
          # @param blog_author [BlogAuthor] The JSON representation of a new Blog Author.
          # @param [Hash] opts the optional parameters
          # @return [Array<(BlogAuthor, Integer, Hash)>] BlogAuthor data, response status code and response headers
          def create_with_http_info(blog_author, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.create ...'
            end
            # verify the required parameter 'blog_author' is set
            if @api_client.config.client_side_validation && blog_author.nil?
              fail ArgumentError, "Missing the required parameter 'blog_author' when calling DefaultApi.create"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors'

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(blog_author) 

            # return_type
            return_type = opts[:return_type] || 'BlogAuthor' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Create a batch of Blog Authors
          # Create the Blog Author objects detailed in the request body.
          # @param batch_input_blog_author [BatchInputBlogAuthor] The JSON array of new Blog Authors to create.
          # @param [Hash] opts the optional parameters
          # @return [Object]
          def create_batch(batch_input_blog_author, opts = {})
            data, _status_code, _headers = create_batch_with_http_info(batch_input_blog_author, opts)
            data
          end

          # Create a batch of Blog Authors
          # Create the Blog Author objects detailed in the request body.
          # @param batch_input_blog_author [BatchInputBlogAuthor] The JSON array of new Blog Authors to create.
          # @param [Hash] opts the optional parameters
          # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
          def create_batch_with_http_info(batch_input_blog_author, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.create_batch ...'
            end
            # verify the required parameter 'batch_input_blog_author' is set
            if @api_client.config.client_side_validation && batch_input_blog_author.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_blog_author' when calling DefaultApi.create_batch"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/batch/create'

            # query parameters
            query_params = opts[:query_params] || {}

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(batch_input_blog_author) 

            # return_type
            return_type = opts[:return_type] || 'Object' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#create_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Retrieve a Blog Author
          # Retrieve the Blog Author object identified by the id in the path.
          # @param object_id [String] The Blog Author id.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to return archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [BlogAuthor]
          def get_by_id(object_id, opts = {})
            data, _status_code, _headers = get_by_id_with_http_info(object_id, opts)
            data
          end

          # Retrieve a Blog Author
          # Retrieve the Blog Author object identified by the id in the path.
          # @param object_id [String] The Blog Author id.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to return archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Array<(BlogAuthor, Integer, Hash)>] BlogAuthor data, response status code and response headers
          def get_by_id_with_http_info(object_id, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.get_by_id ...'
            end
            # verify the required parameter 'object_id' is set
            if @api_client.config.client_side_validation && object_id.nil?
              fail ArgumentError, "Missing the required parameter 'object_id' when calling DefaultApi.get_by_id"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/{objectId}'.sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s))

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] 

            # return_type
            return_type = opts[:return_type] || 'BlogAuthor' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#get_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Get all Blog Authors
          # Get the list of blog authors. Supports paging and filtering. This method would be useful for an integration that examined these models and used an external service to suggest edits. 
          # @param [Hash] opts the optional parameters
          # @option opts [DateTime] :created_at Only return Blog Authors created at exactly the specified time.
          # @option opts [DateTime] :created_after Only return Blog Authors created after the specified time.
          # @option opts [DateTime] :created_before Only return Blog Authors created before the specified time.
          # @option opts [DateTime] :updated_at Only return Blog Authors last updated at exactly the specified time.
          # @option opts [DateTime] :updated_after Only return Blog Authors last updated after the specified time.
          # @option opts [DateTime] :updated_before Only return Blog Authors last updated before the specified time.
          # @option opts [Array<String>] :sort Specifies which fields to use for sorting results. Valid fields are &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;, &#x60;createdBy&#x60;, &#x60;updatedBy&#x60;. &#x60;createdAt&#x60; will be used by default.
          # @option opts [String] :after The cursor token value to get the next set of results. You can get this from the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
          # @option opts [Integer] :limit The maximum number of results to return. Default is 100.
          # @option opts [Boolean] :archived Specifies whether to return archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [CollectionResponseWithTotalBlogAuthorForwardPaging]
          def get_page(opts = {})
            data, _status_code, _headers = get_page_with_http_info(opts)
            data
          end

          # Get all Blog Authors
          # Get the list of blog authors. Supports paging and filtering. This method would be useful for an integration that examined these models and used an external service to suggest edits. 
          # @param [Hash] opts the optional parameters
          # @option opts [DateTime] :created_at Only return Blog Authors created at exactly the specified time.
          # @option opts [DateTime] :created_after Only return Blog Authors created after the specified time.
          # @option opts [DateTime] :created_before Only return Blog Authors created before the specified time.
          # @option opts [DateTime] :updated_at Only return Blog Authors last updated at exactly the specified time.
          # @option opts [DateTime] :updated_after Only return Blog Authors last updated after the specified time.
          # @option opts [DateTime] :updated_before Only return Blog Authors last updated before the specified time.
          # @option opts [Array<String>] :sort Specifies which fields to use for sorting results. Valid fields are &#x60;name&#x60;, &#x60;createdAt&#x60;, &#x60;updatedAt&#x60;, &#x60;createdBy&#x60;, &#x60;updatedBy&#x60;. &#x60;createdAt&#x60; will be used by default.
          # @option opts [String] :after The cursor token value to get the next set of results. You can get this from the &#x60;paging.next.after&#x60; JSON property of a paged response containing more results.
          # @option opts [Integer] :limit The maximum number of results to return. Default is 100.
          # @option opts [Boolean] :archived Specifies whether to return archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Array<(CollectionResponseWithTotalBlogAuthorForwardPaging, Integer, Hash)>] CollectionResponseWithTotalBlogAuthorForwardPaging data, response status code and response headers
          def get_page_with_http_info(opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.get_page ...'
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors'

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'createdAt'] = opts[:'created_at'] if !opts[:'created_at'].nil?
            query_params[:'createdAfter'] = opts[:'created_after'] if !opts[:'created_after'].nil?
            query_params[:'createdBefore'] = opts[:'created_before'] if !opts[:'created_before'].nil?
            query_params[:'updatedAt'] = opts[:'updated_at'] if !opts[:'updated_at'].nil?
            query_params[:'updatedAfter'] = opts[:'updated_after'] if !opts[:'updated_after'].nil?
            query_params[:'updatedBefore'] = opts[:'updated_before'] if !opts[:'updated_before'].nil?
            query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?
            query_params[:'after'] = opts[:'after'] if !opts[:'after'].nil?
            query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] 

            # return_type
            return_type = opts[:return_type] || 'CollectionResponseWithTotalBlogAuthorForwardPaging' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#get_page\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Retrieve a batch of Blog Authors
          # Retrieve the Blog Author objects identified in the request body.
          # @param batch_input_string [BatchInputString] The JSON array of Blog Author ids.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to return archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Object]
          def read_batch(batch_input_string, opts = {})
            data, _status_code, _headers = read_batch_with_http_info(batch_input_string, opts)
            data
          end

          # Retrieve a batch of Blog Authors
          # Retrieve the Blog Author objects identified in the request body.
          # @param batch_input_string [BatchInputString] The JSON array of Blog Author ids.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to return archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
          def read_batch_with_http_info(batch_input_string, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.read_batch ...'
            end
            # verify the required parameter 'batch_input_string' is set
            if @api_client.config.client_side_validation && batch_input_string.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_string' when calling DefaultApi.read_batch"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/batch/read'

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(batch_input_string) 

            # return_type
            return_type = opts[:return_type] || 'Object' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#read_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Update a Blog Author
          # Sparse updates a single Blog Author object identified by the id in the path. All the column values need not be specified. Only the that need to be modified can be specified. 
          # @param object_id [String] The Blog Author id.
          # @param blog_author [BlogAuthor] The JSON representation of the updated Blog Author.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to update archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [BlogAuthor]
          def update(object_id, blog_author, opts = {})
            data, _status_code, _headers = update_with_http_info(object_id, blog_author, opts)
            data
          end

          # Update a Blog Author
          # Sparse updates a single Blog Author object identified by the id in the path. All the column values need not be specified. Only the that need to be modified can be specified. 
          # @param object_id [String] The Blog Author id.
          # @param blog_author [BlogAuthor] The JSON representation of the updated Blog Author.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to update archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Array<(BlogAuthor, Integer, Hash)>] BlogAuthor data, response status code and response headers
          def update_with_http_info(object_id, blog_author, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.update ...'
            end
            # verify the required parameter 'object_id' is set
            if @api_client.config.client_side_validation && object_id.nil?
              fail ArgumentError, "Missing the required parameter 'object_id' when calling DefaultApi.update"
            end
            # verify the required parameter 'blog_author' is set
            if @api_client.config.client_side_validation && blog_author.nil?
              fail ArgumentError, "Missing the required parameter 'blog_author' when calling DefaultApi.update"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/{objectId}'.sub('{' + 'objectId' + '}', CGI.escape(object_id.to_s))

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(blog_author) 

            # return_type
            return_type = opts[:return_type] || 'BlogAuthor' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#update\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end

          # Update a batch of Blog Authors
          # Update the Blog Author objects identified in the request body.
          # @param batch_input_json_node [BatchInputJsonNode] A JSON array of the JSON representations of the updated Blog Authors.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to update archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Object]
          def update_batch(batch_input_json_node, opts = {})
            data, _status_code, _headers = update_batch_with_http_info(batch_input_json_node, opts)
            data
          end

          # Update a batch of Blog Authors
          # Update the Blog Author objects identified in the request body.
          # @param batch_input_json_node [BatchInputJsonNode] A JSON array of the JSON representations of the updated Blog Authors.
          # @param [Hash] opts the optional parameters
          # @option opts [Boolean] :archived Specifies whether to update archived Blog Authors. Defaults to &#x60;false&#x60;.
          # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
          def update_batch_with_http_info(batch_input_json_node, opts = {})
            if @api_client.config.debugging
              @api_client.config.logger.debug 'Calling API: DefaultApi.update_batch ...'
            end
            # verify the required parameter 'batch_input_json_node' is set
            if @api_client.config.client_side_validation && batch_input_json_node.nil?
              fail ArgumentError, "Missing the required parameter 'batch_input_json_node' when calling DefaultApi.update_batch"
            end
            # resource path
            local_var_path = '/cms/v3/blogs/authors/batch/update'

            # query parameters
            query_params = opts[:query_params] || {}
            query_params[:'archived'] = opts[:'archived'] if !opts[:'archived'].nil?

            # header parameters
            header_params = opts[:header_params] || {}
            # HTTP header 'Accept' (if needed)
            header_params['Accept'] = @api_client.select_header_accept(['application/json', '*/*'])
            # HTTP header 'Content-Type'
            header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

            # form parameters
            form_params = opts[:form_params] || {}

            # http body (model)
            post_body = opts[:body] || @api_client.object_to_http_body(batch_input_json_node) 

            # return_type
            return_type = opts[:return_type] || 'Object' 

            # auth_names
            auth_names = opts[:auth_names] || ['hapikey', 'oauth2']

            new_options = opts.merge(
              :header_params => header_params,
              :query_params => query_params,
              :form_params => form_params,
              :body => post_body,
              :auth_names => auth_names,
              :return_type => return_type
            )

            data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
            if @api_client.config.debugging
              @api_client.config.logger.debug "API called: DefaultApi#update_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
            end
            return data, status_code, headers
          end
        end
      end
    end
  end
end
