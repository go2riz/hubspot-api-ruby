=begin
#Transactional Email

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: v3

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'cgi'

module Hubspot
  module Marketing
    module Transactional
      class SingleSendApi
        attr_accessor :api_client

        def initialize(api_client = ApiClient.default)
          @api_client = api_client
        end
        # Send a single transactional email asynchronously.
        # Asynchronously send a transactional email. Returns the status of the email send with a statusId that can be used to continuously query for the status using the Email Send Status API.
        # @param public_single_send_request_egg [PublicSingleSendRequestEgg] A request object describing the email to send.
        # @param [Hash] opts the optional parameters
        # @return [EmailSendStatusView]
        def send_email(public_single_send_request_egg, opts = {})
          data, _status_code, _headers = send_email_with_http_info(public_single_send_request_egg, opts)
          data
        end

        # Send a single transactional email asynchronously.
        # Asynchronously send a transactional email. Returns the status of the email send with a statusId that can be used to continuously query for the status using the Email Send Status API.
        # @param public_single_send_request_egg [PublicSingleSendRequestEgg] A request object describing the email to send.
        # @param [Hash] opts the optional parameters
        # @return [Array<(EmailSendStatusView, Integer, Hash)>] EmailSendStatusView data, response status code and response headers
        def send_email_with_http_info(public_single_send_request_egg, opts = {})
          if @api_client.config.debugging
            @api_client.config.logger.debug 'Calling API: SingleSendApi.send_email ...'
          end
          # verify the required parameter 'public_single_send_request_egg' is set
          if @api_client.config.client_side_validation && public_single_send_request_egg.nil?
            fail ArgumentError, "Missing the required parameter 'public_single_send_request_egg' when calling SingleSendApi.send_email"
          end
          # resource path
          local_var_path = '/marketing/v3/transactional/single-email/send'

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
          post_body = opts[:body] || @api_client.object_to_http_body(public_single_send_request_egg) 

          # return_type
          return_type = opts[:return_type] || 'EmailSendStatusView' 

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
            @api_client.config.logger.debug "API called: SingleSendApi#send_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
          end
          return data, status_code, headers
        end
      end
    end
  end
end
