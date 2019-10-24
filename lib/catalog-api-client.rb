=begin
#Catalog API

#This API gets and orders catalog items from different cloud sources.

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

# Common files
require 'catalog-api-client/api_client'
require 'catalog-api-client/api_error'
require 'catalog-api-client/version'
require 'catalog-api-client/configuration'

# Models
require 'catalog-api-client/models/add_portfolio_item'
require 'catalog-api-client/models/approval_request'
require 'catalog-api-client/models/approval_requests_collection'
require 'catalog-api-client/models/collection_links'
require 'catalog-api-client/models/collection_metadata'
require 'catalog-api-client/models/copy_portfolio_item'
require 'catalog-api-client/models/create_portfolio_item'
require 'catalog-api-client/models/graph_ql_request'
require 'catalog-api-client/models/graph_ql_response'
require 'catalog-api-client/models/icon'
require 'catalog-api-client/models/inline_object'
require 'catalog-api-client/models/order'
require 'catalog-api-client/models/order_item'
require 'catalog-api-client/models/order_items_collection'
require 'catalog-api-client/models/orders_collection'
require 'catalog-api-client/models/portfolio'
require 'catalog-api-client/models/portfolio_item'
require 'catalog-api-client/models/portfolio_item_next_name'
require 'catalog-api-client/models/portfolio_items_collection'
require 'catalog-api-client/models/portfolios_collection'
require 'catalog-api-client/models/progress_message'
require 'catalog-api-client/models/progress_messages_collection'
require 'catalog-api-client/models/provider_control_parameters'
require 'catalog-api-client/models/restore_key'
require 'catalog-api-client/models/service_plan'
require 'catalog-api-client/models/setting'
require 'catalog-api-client/models/share_info'
require 'catalog-api-client/models/share_policy'
require 'catalog-api-client/models/tag'
require 'catalog-api-client/models/tag_item'
require 'catalog-api-client/models/tags_collection'
require 'catalog-api-client/models/tenant'
require 'catalog-api-client/models/tenant_settings'
require 'catalog-api-client/models/tenant_settings_schema'
require 'catalog-api-client/models/tenants_collection'
require 'catalog-api-client/models/unshare_policy'

# APIs
require 'catalog-api-client/api/default_api'
require 'catalog-api-client/api/icon_api'
require 'catalog-api-client/api/order_api'
require 'catalog-api-client/api/order_item_api'
require 'catalog-api-client/api/portfolio_api'
require 'catalog-api-client/api/portfolio_item_api'
require 'catalog-api-client/api/settings_api'
require 'catalog-api-client/api/tags_api'
require 'catalog-api-client/api/tenant_api'

module CatalogApiClient
  class << self
    # Customize default settings for the SDK using block.
    #   CatalogApiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
