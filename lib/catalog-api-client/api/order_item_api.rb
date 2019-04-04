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
  class OrderItemApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Gets a list of approval requests for an item
    # Gets a list of approval request associated with an order item. As the item is being approved one can check the status of the approvals. 
    # @param order_item_id The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page. (default to 100)
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set. (default to 0)
    # @return [ApprovalRequestsCollection]
    def list_approval_requests(order_item_id, opts = {})
      data, _status_code, _headers = list_approval_requests_with_http_info(order_item_id, opts)
      data
    end

    # Gets a list of approval requests for an item
    # Gets a list of approval request associated with an order item. As the item is being approved one can check the status of the approvals. 
    # @param order_item_id The Order Item ID
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The numbers of items to return per page.
    # @option opts [Integer] :offset The number of items to skip before starting to collect the result set.
    # @return [Array<(ApprovalRequestsCollection, Fixnum, Hash)>] ApprovalRequestsCollection data, response status code and response headers
    def list_approval_requests_with_http_info(order_item_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderItemApi.list_approval_requests ...'
      end
      # verify the required parameter 'order_item_id' is set
      if @api_client.config.client_side_validation && order_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_item_id' when calling OrderItemApi.list_approval_requests"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_approval_requests, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_approval_requests, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderItemApi.list_approval_requests, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/order_items/{order_item_id}/approval_requests'.sub('{' + 'order_item_id' + '}', order_item_id.to_s)

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
        :return_type => 'ApprovalRequestsCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderItemApi#list_approval_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: OrderItemApi.list_progress_messages ...'
      end
      # verify the required parameter 'order_item_id' is set
      if @api_client.config.client_side_validation && order_item_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_item_id' when calling OrderItemApi.list_progress_messages"
      end
      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_progress_messages, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling OrderItemApi.list_progress_messages, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling OrderItemApi.list_progress_messages, must be greater than or equal to 0.'
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
        @api_client.config.logger.debug "API called: OrderItemApi#list_progress_messages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end