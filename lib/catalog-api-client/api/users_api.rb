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
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add an order item to an order in pending state
    # Adds an order item to an order in pending state 
    # @param order_id The Order ID
    # @param order_item 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def add_to_order(order_id, order_item, opts = {})
      add_to_order_with_http_info(order_id, order_item, opts)
      nil
    end

    # Add an order item to an order in pending state
    # Adds an order item to an order in pending state 
    # @param order_id The Order ID
    # @param order_item 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def add_to_order_with_http_info(order_id, order_item, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.add_to_order ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling UsersApi.add_to_order"
      end
      # verify the required parameter 'order_item' is set
      if @api_client.config.client_side_validation && order_item.nil?
        fail ArgumentError, "Missing the required parameter 'order_item' when calling UsersApi.add_to_order"
      end
      # resource path
      local_var_path = '/orders/{order_id}/order_items'.sub('{' + 'order_id' + '}', order_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(order_item)
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#add_to_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all portfolio items from a specific portfolio
    # Gets all portfilio items in the portfolio specified by the given ID. 
    # @param portfolio_id The Portfolio ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @return [PortfolioItemsCollection]
    def fetch_portfolio_items_with_portfolio(portfolio_id, opts = {})
      data, _status_code, _headers = fetch_portfolio_items_with_portfolio_with_http_info(portfolio_id, opts)
      data
    end

    # Get all portfolio items from a specific portfolio
    # Gets all portfilio items in the portfolio specified by the given ID. 
    # @param portfolio_id The Portfolio ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @return [Array<(PortfolioItemsCollection, Fixnum, Hash)>] PortfolioItemsCollection data, response status code and response headers
    def fetch_portfolio_items_with_portfolio_with_http_info(portfolio_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.fetch_portfolio_items_with_portfolio ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling UsersApi.fetch_portfolio_items_with_portfolio"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.fetch_portfolio_items_with_portfolio, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.fetch_portfolio_items_with_portfolio, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.fetch_portfolio_items_with_portfolio, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/portfolios/{portfolio_id}/portfolio_items'.sub('{' + 'portfolio_id' + '}', portfolio_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItemsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#fetch_portfolio_items_with_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of items in a given order
    # Gets a list of items associated with an order. 
    # @param order_id The Order ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @return [OrderItemsCollection]
    def list_order_items(order_id, opts = {})
      data, _status_code, _headers = list_order_items_with_http_info(order_id, opts)
      data
    end

    # Gets a list of items in a given order
    # Gets a list of items associated with an order. 
    # @param order_id The Order ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @return [Array<(OrderItemsCollection, Fixnum, Hash)>] OrderItemsCollection data, response status code and response headers
    def list_order_items_with_http_info(order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_order_items ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling UsersApi.list_order_items"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_order_items, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_order_items, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_order_items, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/orders/{order_id}/order_items'.sub('{' + 'order_id' + '}', order_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderItemsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_order_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of orders
    # Gets a list of orders associated with the logged in user. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @return [OrdersCollection]
    def list_orders(opts = {})
      data, _status_code, _headers = list_orders_with_http_info(opts)
      data
    end

    # Get a list of orders
    # Gets a list of orders associated with the logged in user. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @return [Array<(OrdersCollection, Fixnum, Hash)>] OrdersCollection data, response status code and response headers
    def list_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_orders ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_orders, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_orders, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_orders, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/orders'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrdersCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all portfolio items
    # Gets a list of portfolio items. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
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
    # @return [Array<(PortfolioItemsCollection, Fixnum, Hash)>] PortfolioItemsCollection data, response status code and response headers
    def list_portfolio_items_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_portfolio_items ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_portfolio_items, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_portfolio_items, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_portfolio_items, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/portfolio_items'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItemsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_portfolio_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List portfolios
    # Gets a list of portfolios. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @return [PortfoliosCollection]
    def list_portfolios(opts = {})
      data, _status_code, _headers = list_portfolios_with_http_info(opts)
      data
    end

    # List portfolios
    # Gets a list of portfolios. 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @return [Array<(PortfoliosCollection, Fixnum, Hash)>] PortfoliosCollection data, response status code and response headers
    def list_portfolios_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_portfolios ...'
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_portfolios, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_portfolios, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_portfolios, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/portfolios'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfoliosCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_portfolios\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of progress messages in an item
    # Gets a list of progress messages associated with an order item. As the item is being processed the provider can update the progress messages. 
    # @param order_item_id The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @return [ProgressMessagesCollection]
    def list_progress_messages(order_item_id, opts = {})
      data, _status_code, _headers = list_progress_messages_with_http_info(order_item_id, opts)
      data
    end

    # Gets a list of progress messages in an item
    # Gets a list of progress messages associated with an order item. As the item is being processed the provider can update the progress messages. 
    # @param order_item_id The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @return [Array<(ProgressMessagesCollection, Fixnum, Hash)>] ProgressMessagesCollection data, response status code and response headers
    def list_progress_messages_with_http_info(order_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_progress_messages ...'
      end
      # verify the required parameter 'order_item_id' is set
      if @api_client.config.client_side_validation && order_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_item_id' when calling UsersApi.list_progress_messages"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_progress_messages, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling UsersApi.list_progress_messages, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling UsersApi.list_progress_messages, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/order_items/{order_item_id}/progress_messages'.sub('{' + 'order_item_id' + '}', order_item_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProgressMessagesCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_progress_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: UsersApi.list_provider_control_parameters ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling UsersApi.list_provider_control_parameters"
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
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ProviderControlParameters')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_provider_control_parameters\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: UsersApi.list_service_plans ...'
      end
      # verify the required parameter 'portfolio_item_id' is set
      if @api_client.config.client_side_validation && portfolio_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_item_id' when calling UsersApi.list_service_plans"
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
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ServicePlan>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_service_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
    # Fetch share information about a portfolio 
    # @param portfolio_id The Portfolio ID
    # @param [Hash] opts the optional parameters
    # @return [Array<ShareInfo>]
    def share_info(portfolio_id, opts = {})
      data, _status_code, _headers = share_info_with_http_info(portfolio_id, opts)
      data
    end

    # Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
    # Fetch share information about a portfolio 
    # @param portfolio_id The Portfolio ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ShareInfo>, Fixnum, Hash)>] Array<ShareInfo> data, response status code and response headers
    def share_info_with_http_info(portfolio_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.share_info ...'
      end
      # verify the required parameter 'portfolio_id' is set
      if @api_client.config.client_side_validation && portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_id' when calling UsersApi.share_info"
      end
      # resource path
      local_var_path = '/portfolios/{portfolio_id}/share_info'.sub('{' + 'portfolio_id' + '}', portfolio_id.to_s)

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
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<ShareInfo>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#share_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets an individual order item from a given order
    # Gets an order item associated with an order. 
    # @param order_id The Order ID
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [OrderItem]
    def show_order_item(order_id, id, opts = {})
      data, _status_code, _headers = show_order_item_with_http_info(order_id, id, opts)
      data
    end

    # Gets an individual order item from a given order
    # Gets an order item associated with an order. 
    # @param order_id The Order ID
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderItem, Fixnum, Hash)>] OrderItem data, response status code and response headers
    def show_order_item_with_http_info(order_id, id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_order_item ...'
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling UsersApi.show_order_item"
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_order_item"
      end
      # resource path
      local_var_path = '/orders/{order_id}/order_items/{id}'.sub('{' + 'order_id' + '}', order_id.to_s).sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_order_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a specific portfolio
    # Gets the portfolio specified by the portfolio ID. 
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Portfolio]
    def show_portfolio(id, opts = {})
      data, _status_code, _headers = show_portfolio_with_http_info(id, opts)
      data
    end

    # Get a specific portfolio
    # Gets the portfolio specified by the portfolio ID. 
    # @param id ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(Portfolio, Fixnum, Hash)>] Portfolio data, response status code and response headers
    def show_portfolio_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.show_portfolio ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_portfolio"
      end
      # resource path
      local_var_path = '/portfolios/{id}'.sub('{' + 'id' + '}', id.to_s)

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
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Portfolio')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: UsersApi.show_portfolio_item ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling UsersApi.show_portfolio_item"
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
      auth_names = ['APIKeyAuth', 'BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PortfolioItem')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#show_portfolio_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
