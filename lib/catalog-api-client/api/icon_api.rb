=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

The version of the OpenAPI document: 1.1.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.2.2

=end

require 'cgi'

module CatalogApiClient
  class IconApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an Icon
    # Creates an Icon from the specified parameters
    # @param [Hash] opts the optional parameters
    # @option opts [File] :content The binary image contents, maximum size is 250KB
    # @option opts [String] :portfolio_id The Portfolio this Icon belongs to
    # @option opts [String] :portfolio_item_id The Portfolio Item this Icon belongs to
    # @return [Icon]
    def create_icon(opts = {})
      data, _status_code, _headers = create_icon_with_http_info(opts)
      data
    end

    # Create an Icon
    # Creates an Icon from the specified parameters
    # @param [Hash] opts the optional parameters
    # @option opts [File] :content The binary image contents, maximum size is 250KB
    # @option opts [String] :portfolio_id The Portfolio this Icon belongs to
    # @option opts [String] :portfolio_item_id The Portfolio Item this Icon belongs to
    # @return [Array<(Icon, Integer, Hash)>] Icon data, response status code and response headers
    def create_icon_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IconApi.create_icon ...'
      end
      # resource path
      local_var_path = '/icons'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['content'] = opts[:'content'] if !opts[:'content'].nil?
      form_params['portfolio_id'] = opts[:'portfolio_id'] if !opts[:'portfolio_id'].nil?
      form_params['portfolio_item_id'] = opts[:'portfolio_item_id'] if !opts[:'portfolio_item_id'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Icon' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth']

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
        @api_client.config.logger.debug "API called: IconApi#create_icon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing Icon
    # Deletes the icon based on the icon ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def destroy_icon(id, opts = {})
      destroy_icon_with_http_info(id, opts)
      nil
    end

    # Delete an existing Icon
    # Deletes the icon based on the icon ID passed
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def destroy_icon_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IconApi.destroy_icon ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IconApi.destroy_icon"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling IconApi.destroy_icon, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/icons/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth']

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
        @api_client.config.logger.debug "API called: IconApi#destroy_icon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an existing Icon
    # Edits Icon specified by the given ID.
    # @param id [String] ID of the resource
    # @param icon [Icon] Parameters needed to update an Icon
    # @param [Hash] opts the optional parameters
    # @return [Icon]
    def update_icon(id, icon, opts = {})
      data, _status_code, _headers = update_icon_with_http_info(id, icon, opts)
      data
    end

    # Edit an existing Icon
    # Edits Icon specified by the given ID.
    # @param id [String] ID of the resource
    # @param icon [Icon] Parameters needed to update an Icon
    # @param [Hash] opts the optional parameters
    # @return [Array<(Icon, Integer, Hash)>] Icon data, response status code and response headers
    def update_icon_with_http_info(id, icon, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: IconApi.update_icon ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling IconApi.update_icon"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling IconApi.update_icon, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'icon' is set
      if @api_client.config.client_side_validation && icon.nil?
        fail ArgumentError, "Missing the required parameter 'icon' when calling IconApi.update_icon"
      end
      # resource path
      local_var_path = '/icons/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(icon) 

      # return_type
      return_type = opts[:return_type] || 'Icon' 

      # auth_names
      auth_names = opts[:auth_names] || ['BasicAuth']

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
        @api_client.config.logger.debug "API called: IconApi#update_icon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
