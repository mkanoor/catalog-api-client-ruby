=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module CatalogApiClient
  class PortfolioItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an Icon to a Portfolio Item
    # Add an Icon to a Portfolio Item
    # @param portfolio_item_id The Portfolio Item ID
    # @param add_icon 
    # @param [Hash] opts the optional parameters
    # @return [Icon]
    def add_icon_to_portfolio_item(portfolio_item_id, add_icon, opts = {})
      data, _status_code, _headers = add_icon_to_portfolio_item_with_http_info(portfolio_item_id, add_icon, opts)
      data
    end

    # Add an Icon to a Portfolio Item
    # Add an Icon to a Portfolio Item
    # @param portfolio_item_id The Portfolio Item ID
    # @param add_icon 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Icon, Fixnum, Hash)>] Icon data, response status code and response headers
    def add_icon_to_portfolio_item_with_http_info(portfolio_item_id, add_icon, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.add_icon_to_portfolio_item ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.add_icon_to_portfolio_item"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.add_icon_to_portfolio_item, must conform to the pattern /^\d+$/."
      end

      # verify the required parameter 'add_icon' is set
      if @api_client.config.client_side_validation && add_icon.nil?
        fail ArgumentError, "Missing the required parameter 'add_icon' when calling PortfolioItemApi.add_icon_to_portfolio_item"
      end
      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/icon'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(add_icon)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Icon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#add_icon_to_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new portfolio item
    # Adds a name and description for a portfolio item and returns the newly created portfolio item. 
    # @param create_portfolio_item 
    # @param [Hash] opts the optional parameters
    # @return [PortfolioItem]
    def create_portfolio_item(create_portfolio_item, opts = {})
      data, _status_code, _headers = create_portfolio_item_with_http_info(create_portfolio_item, opts)
      data
    end

    # Add a new portfolio item
    # Adds a name and description for a portfolio item and returns the newly created portfolio item. 
    # @param create_portfolio_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioItem, Fixnum, Hash)>] PortfolioItem data, response status code and response headers
    def create_portfolio_item_with_http_info(create_portfolio_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.create_portfolio_item ...'
      end
      # verify the required parameter 'create_portfolio_item' is set
      if @api_client.config.client_side_validation && create_portfolio_item.nil?
        fail ArgumentError, "Missing the required parameter 'create_portfolio_item' when calling PortfolioItemApi.create_portfolio_item"
      end
      # resource path
      local_var_path = '/portfolio_items'

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
      post_body = @api_client.object_to_http_body(create_portfolio_item)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#create_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an existing portfolio item
    # Deletes the portfolio item based on portfolio item ID passed 
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [RestoreKey]
    def destroy_portfolio_item(id, opts = {})
      data, _status_code, _headers = destroy_portfolio_item_with_http_info(id, opts)
      data
    end

    # Delete an existing portfolio item
    # Deletes the portfolio item based on portfolio item ID passed 
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(RestoreKey, Fixnum, Hash)>] RestoreKey data, response status code and response headers
    def destroy_portfolio_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.destroy_portfolio_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortfolioItemApi.destroy_portfolio_item"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'id' when calling PortfolioItemApi.destroy_portfolio_item, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'RestoreKey')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#destroy_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the next name for a the Portfolio Item prior to a copy operation
    # Get the next name for a the Portfolio Item prior to a copy operation
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :destination_portfolio_id The destination portfolio to compare names against
    # @return [PortfolioItemNextName]
    def get_portfolio_item_next_name(portfolio_item_id, opts = {})
      data, _status_code, _headers = get_portfolio_item_next_name_with_http_info(portfolio_item_id, opts)
      data
    end

    # Get the next name for a the Portfolio Item prior to a copy operation
    # Get the next name for a the Portfolio Item prior to a copy operation
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :destination_portfolio_id The destination portfolio to compare names against
    # @return [Array<(PortfolioItemNextName, Fixnum, Hash)>] PortfolioItemNextName data, response status code and response headers
    def get_portfolio_item_next_name_with_http_info(portfolio_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.get_portfolio_item_next_name ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.get_portfolio_item_next_name"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.get_portfolio_item_next_name, must conform to the pattern /^\d+$/."
      end

      if @api_client.config.client_side_validation && !opts[:'destination_portfolio_id'].nil? && opts[:'destination_portfolio_id'] !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'opts[:\"destination_portfolio_id\"]' when calling PortfolioItemApi.get_portfolio_item_next_name, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/next_name'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'destination_portfolio_id'] = opts[:'destination_portfolio_id'] if !opts[:'destination_portfolio_id'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItemNextName')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#get_portfolio_item_next_name\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all portfolio items
    # Gets a list of portfolio items. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @option opts [Object] :filter Filter for querying collections.
    # @return [PortfolioItemsCollection]
    def list_portfolio_items(opts = {})
      data, _status_code, _headers = list_portfolio_items_with_http_info(opts)
      data
    end

    # List all portfolio items
    # Gets a list of portfolio items. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @option opts [Object] :filter Filter for querying collections.
    # @return [Array<(PortfolioItemsCollection, Fixnum, Hash)>] PortfolioItemsCollection data, response status code and response headers
    def list_portfolio_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.list_portfolio_items ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PortfolioItemApi.list_portfolio_items, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling PortfolioItemApi.list_portfolio_items, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling PortfolioItemApi.list_portfolio_items, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/portfolio_items'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItemsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#list_portfolio_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
    # Gets the provider control parameters for a portfolio item. 
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @return [ProviderControlParameters]
    def list_provider_control_parameters(portfolio_item_id, opts = {})
      data, _status_code, _headers = list_provider_control_parameters_with_http_info(portfolio_item_id, opts)
      data
    end

    # Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
    # Gets the provider control parameters for a portfolio item. 
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(ProviderControlParameters, Fixnum, Hash)>] ProviderControlParameters data, response status code and response headers
    def list_provider_control_parameters_with_http_info(portfolio_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.list_provider_control_parameters ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.list_provider_control_parameters"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.list_provider_control_parameters, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/provider_control_parameters'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProviderControlParameters')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#list_provider_control_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets all service plans for a specific portfolio item; requires a connection to the topology service.
    # Gets all service plans for a portfolio item. 
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<ServicePlan>]
    def list_service_plans(portfolio_item_id, opts = {})
      data, _status_code, _headers = list_service_plans_with_http_info(portfolio_item_id, opts)
      data
    end

    # Gets all service plans for a specific portfolio item; requires a connection to the topology service.
    # Gets all service plans for a portfolio item. 
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ServicePlan>, Fixnum, Hash)>] Array<ServicePlan> data, response status code and response headers
    def list_service_plans_with_http_info(portfolio_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.list_service_plans ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.list_service_plans"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.list_service_plans, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/service_plans'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ServicePlan>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#list_service_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Undelete a specified Portfolio Item
    # If a record has been discarded, this operation will undelete it so it can be requested normally.
    # @param portfolio_item_id The Portfolio Item ID
    # @param restore_key 
    # @param [Hash] opts the optional parameters
    # @return [PortfolioItem]
    def portfolio_items_portfolio_item_id_undelete_post(portfolio_item_id, restore_key, opts = {})
      data, _status_code, _headers = portfolio_items_portfolio_item_id_undelete_post_with_http_info(portfolio_item_id, restore_key, opts)
      data
    end

    # Undelete a specified Portfolio Item
    # If a record has been discarded, this operation will undelete it so it can be requested normally.
    # @param portfolio_item_id The Portfolio Item ID
    # @param restore_key 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioItem, Fixnum, Hash)>] PortfolioItem data, response status code and response headers
    def portfolio_items_portfolio_item_id_undelete_post_with_http_info(portfolio_item_id, restore_key, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.portfolio_items_portfolio_item_id_undelete_post ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.portfolio_items_portfolio_item_id_undelete_post"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.portfolio_items_portfolio_item_id_undelete_post, must conform to the pattern /^\d+$/."
      end

      # verify the required parameter 'restore_key' is set
      if @api_client.config.client_side_validation && restore_key.nil?
        fail ArgumentError, "Missing the required parameter 'restore_key' when calling PortfolioItemApi.portfolio_items_portfolio_item_id_undelete_post"
      end
      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/undelete'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(restore_key)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#portfolio_items_portfolio_item_id_undelete_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Make a copy of the Portfolio Item
    # Make a copy of the Portfolio Item.
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [CopyPortfolioItem] :copy_portfolio_item 
    # @return [PortfolioItem]
    def post_copy_portfolio_item(portfolio_item_id, opts = {})
      data, _status_code, _headers = post_copy_portfolio_item_with_http_info(portfolio_item_id, opts)
      data
    end

    # Make a copy of the Portfolio Item
    # Make a copy of the Portfolio Item.
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [CopyPortfolioItem] :copy_portfolio_item 
    # @return [Array<(PortfolioItem, Fixnum, Hash)>] PortfolioItem data, response status code and response headers
    def post_copy_portfolio_item_with_http_info(portfolio_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.post_copy_portfolio_item ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.post_copy_portfolio_item"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.post_copy_portfolio_item, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/copy'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

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
      post_body = @api_client.object_to_http_body(opts[:'copy_portfolio_item'])
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#post_copy_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a specific portfolio item
    # Gets a specific portfolio item based on the portfolio item ID passed 
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [PortfolioItem]
    def show_portfolio_item(id, opts = {})
      data, _status_code, _headers = show_portfolio_item_with_http_info(id, opts)
      data
    end

    # Gets a specific portfolio item
    # Gets a specific portfolio item based on the portfolio item ID passed 
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioItem, Fixnum, Hash)>] PortfolioItem data, response status code and response headers
    def show_portfolio_item_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.show_portfolio_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortfolioItemApi.show_portfolio_item"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'id' when calling PortfolioItemApi.show_portfolio_item, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#show_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetches the specified portfolio item's icon image
    # Fetch the specified portfolio item's icon image.
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def show_portfolio_item_icon(portfolio_item_id, opts = {})
      show_portfolio_item_icon_with_http_info(portfolio_item_id, opts)
      nil
    end

    # Fetches the specified portfolio item&#39;s icon image
    # Fetch the specified portfolio item&#39;s icon image.
    # @param portfolio_item_id The Portfolio Item ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def show_portfolio_item_icon_with_http_info(portfolio_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.show_portfolio_item_icon ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling PortfolioItemApi.show_portfolio_item_icon"
      end
      if @api_client.config.client_side_validation && portfolio_item_id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'portfolio_item_id' when calling PortfolioItemApi.show_portfolio_item_icon, must conform to the pattern /^\d+$/."
      end

      # resource path
      local_var_path = '/portfolio_items/{portfolio_item_id}/icon'.sub('{' + 'portfolio_item_id' + '}', portfolio_item_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['image/svg+xml'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#show_portfolio_item_icon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
        @api_client.config.logger.debug 'Calling API: PortfolioItemApi.update_portfolio_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PortfolioItemApi.update_portfolio_item"
      end
      if @api_client.config.client_side_validation && id !~ Regexp.new(/^\d+$/)
        fail ArgumentError, "invalid value for 'id' when calling PortfolioItemApi.update_portfolio_item, must conform to the pattern /^\d+$/."
      end

      # verify the required parameter 'portfolio_item' is set
      if @api_client.config.client_side_validation && portfolio_item.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item' when calling PortfolioItemApi.update_portfolio_item"
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
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioItemApi#update_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
