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
  class ServicePlansApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create Service Plan
    # Returns the new Service Plan
    # @param [Hash] opts the optional parameters
    # @option opts [ImportServicePlan] :import_service_plan 
    # @return [Array<ServicePlan>]
    def create_service_plan(opts = {})
      data, _status_code, _headers = create_service_plan_with_http_info(opts)
      data
    end

    # Create Service Plan
    # Returns the new Service Plan
    # @param [Hash] opts the optional parameters
    # @option opts [ImportServicePlan] :import_service_plan 
    # @return [Array<(Array<ServicePlan>, Integer, Hash)>] Array<ServicePlan> data, response status code and response headers
    def create_service_plan_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicePlansApi.create_service_plan ...'
      end
      # resource path
      local_var_path = '/service_plans'

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'import_service_plan']) 

      # return_type
      return_type = opts[:return_type] || 'Array<ServicePlan>' 

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
        @api_client.config.logger.debug "API called: ServicePlansApi#create_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Patch Service Plan Modified Schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [PatchModifiedServicePlan] :patch_modified_service_plan 
    # @return [Object]
    def patch_service_plan_modified(id, opts = {})
      data, _status_code, _headers = patch_service_plan_modified_with_http_info(id, opts)
      data
    end

    # Patch Service Plan Modified Schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @option opts [PatchModifiedServicePlan] :patch_modified_service_plan 
    # @return [Array<(Object, Integer, Hash)>] Object data, response status code and response headers
    def patch_service_plan_modified_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicePlansApi.patch_service_plan_modified ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServicePlansApi.patch_service_plan_modified"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling ServicePlansApi.patch_service_plan_modified, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/service_plans/{id}/modified'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'patch_modified_service_plan']) 

      # return_type
      return_type = opts[:return_type] || 'Object' 

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
        @api_client.config.logger.debug "API called: ServicePlansApi#patch_service_plan_modified\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset Service Plan Modified schema
    # Resets the Service Plan's Modified schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reset_service_plan_modified(id, opts = {})
      reset_service_plan_modified_with_http_info(id, opts)
      nil
    end

    # Reset Service Plan Modified schema
    # Resets the Service Plan&#39;s Modified schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def reset_service_plan_modified_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicePlansApi.reset_service_plan_modified ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServicePlansApi.reset_service_plan_modified"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling ServicePlansApi.reset_service_plan_modified, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/service_plans/{id}/reset'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicePlansApi#reset_service_plan_modified\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Service Plan
    # Returns the specified Service Plan
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [ServicePlan]
    def show_service_plan(id, opts = {})
      data, _status_code, _headers = show_service_plan_with_http_info(id, opts)
      data
    end

    # Show Service Plan
    # Returns the specified Service Plan
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServicePlan, Integer, Hash)>] ServicePlan data, response status code and response headers
    def show_service_plan_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicePlansApi.show_service_plan ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServicePlansApi.show_service_plan"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling ServicePlansApi.show_service_plan, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/service_plans/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ServicePlan' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicePlansApi#show_service_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Service Plan Base Schema
    # Returns the specified Service Plan's base schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [ServicePlan]
    def show_service_plan_base(id, opts = {})
      data, _status_code, _headers = show_service_plan_base_with_http_info(id, opts)
      data
    end

    # Show Service Plan Base Schema
    # Returns the specified Service Plan&#39;s base schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServicePlan, Integer, Hash)>] ServicePlan data, response status code and response headers
    def show_service_plan_base_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicePlansApi.show_service_plan_base ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServicePlansApi.show_service_plan_base"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling ServicePlansApi.show_service_plan_base, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/service_plans/{id}/base'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ServicePlan' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicePlansApi#show_service_plan_base\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Show Service Plan modified Schema
    # Returns the specified Service Plan's modified schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [ServicePlan]
    def show_service_plan_modified(id, opts = {})
      data, _status_code, _headers = show_service_plan_modified_with_http_info(id, opts)
      data
    end

    # Show Service Plan modified Schema
    # Returns the specified Service Plan&#39;s modified schema
    # @param id [String] ID of the resource
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServicePlan, Integer, Hash)>] ServicePlan data, response status code and response headers
    def show_service_plan_modified_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServicePlansApi.show_service_plan_modified ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServicePlansApi.show_service_plan_modified"
      end
      pattern = Regexp.new(/^\d+$/)
      if @api_client.config.client_side_validation && id !~ pattern
        fail ArgumentError, "invalid value for 'id' when calling ServicePlansApi.show_service_plan_modified, must conform to the pattern #{pattern}."
      end

      # resource path
      local_var_path = '/service_plans/{id}/modified'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ServicePlan' 

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServicePlansApi#show_service_plan_modified\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
