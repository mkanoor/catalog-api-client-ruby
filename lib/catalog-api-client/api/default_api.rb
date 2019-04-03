=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

OpenAPI spec version: 0.1.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module CatalogApiClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Edit an existing portfolio item
    # Edits portfolio item specified by the given ID.
    # @param id ID of the resource
    # @param portfolio_item Parameters needed to update a Portfolio Item
    # @param [Hash] opts the optional parameters
    # @return [PortfolioItem]
    def update_portfolio_item(id, portfolio_item, opts = {})
      data, _status_code, _headers = update_portfolio_item_with_http_info(id, portfolio_item, opts)
      data
    end

    # Edit an existing portfolio item
    # Edits portfolio item specified by the given ID.
    # @param id ID of the resource
    # @param portfolio_item Parameters needed to update a Portfolio Item
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioItem, Fixnum, Hash)>] PortfolioItem data, response status code and response headers
    def update_portfolio_item_with_http_info(id, portfolio_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DefaultApi.update_portfolio_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling DefaultApi.update_portfolio_item"
      end
      # verify the required parameter 'portfolio_item' is set
      if @api_client.config.client_side_validation && portfolio_item.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item' when calling DefaultApi.update_portfolio_item"
      end
      # resource path
      local_var_path = '/portfolio_items/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(portfolio_item)
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#update_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
