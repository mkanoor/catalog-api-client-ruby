# CatalogApiClient::UsersApi

All URIs are relative to *https://localhost/api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_order**](UsersApi.md#add_to_order) | **POST** /orders/{order_id}/order_items | Add an order item to an order in pending state
[**fetch_portfolio_items_with_portfolio**](UsersApi.md#fetch_portfolio_items_with_portfolio) | **GET** /portfolios/{portfolio_id}/portfolio_items | Get all portfolio items from a specific portfolio
[**list_approval_requests**](UsersApi.md#list_approval_requests) | **GET** /order_items/{order_item_id}/approval_requests | Gets a list of approval requests for an item
[**list_order_items**](UsersApi.md#list_order_items) | **GET** /orders/{order_id}/order_items | Gets a list of items in a given order
[**list_orders**](UsersApi.md#list_orders) | **GET** /orders | Get a list of orders
[**list_portfolio_items**](UsersApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
[**list_portfolios**](UsersApi.md#list_portfolios) | **GET** /portfolios | List portfolios
[**list_progress_messages**](UsersApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item
[**list_provider_control_parameters**](UsersApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
[**list_service_plans**](UsersApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
[**share_info**](UsersApi.md#share_info) | **GET** /portfolios/{portfolio_id}/share_info | Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
[**show_order_item**](UsersApi.md#show_order_item) | **GET** /orders/{order_id}/order_items/{id} | Gets an individual order item from a given order
[**show_portfolio**](UsersApi.md#show_portfolio) | **GET** /portfolios/{id} | Get a specific portfolio
[**show_portfolio_item**](UsersApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item


# **add_to_order**
> add_to_order(order_id, order_item)

Add an order item to an order in pending state

Adds an order item to an order in pending state 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
order_id = 'order_id_example' # String | The Order ID
order_item = CatalogApiClient::OrderItem.new # OrderItem | 

begin
  #Add an order item to an order in pending state
  api_instance.add_to_order(order_id, order_item)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->add_to_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 
 **order_item** | [**OrderItem**](OrderItem.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **fetch_portfolio_items_with_portfolio**
> PortfolioItemsCollection fetch_portfolio_items_with_portfolio(portfolio_id, opts)

Get all portfolio items from a specific portfolio

Gets all portfilio items in the portfolio specified by the given ID. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Get all portfolio items from a specific portfolio
  result = api_instance.fetch_portfolio_items_with_portfolio(portfolio_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->fetch_portfolio_items_with_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**PortfolioItemsCollection**](PortfolioItemsCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_approval_requests**
> ApprovalRequestsCollection list_approval_requests(order_item_id, opts)

Gets a list of approval requests for an item

Gets a list of approval request associated with an order item. As the item is being approved one can check the status of the approvals. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
order_item_id = 'order_item_id_example' # String | The Order Item ID
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Gets a list of approval requests for an item
  result = api_instance.list_approval_requests(order_item_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_approval_requests: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_item_id** | **String**| The Order Item ID | 
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**ApprovalRequestsCollection**](ApprovalRequestsCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_order_items**
> OrderItemsCollection list_order_items(order_id, opts)

Gets a list of items in a given order

Gets a list of items associated with an order. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
order_id = 'order_id_example' # String | The Order ID
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Gets a list of items in a given order
  result = api_instance.list_order_items(order_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_order_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**OrderItemsCollection**](OrderItemsCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_orders**
> OrdersCollection list_orders(opts)

Get a list of orders

Gets a list of orders associated with the logged in user. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Get a list of orders
  result = api_instance.list_orders(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**OrdersCollection**](OrdersCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_portfolio_items**
> PortfolioItemsCollection list_portfolio_items(opts)

List all portfolio items

Gets a list of portfolio items. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #List all portfolio items
  result = api_instance.list_portfolio_items(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_portfolio_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**PortfolioItemsCollection**](PortfolioItemsCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_portfolios**
> PortfoliosCollection list_portfolios(opts)

List portfolios

Gets a list of portfolios. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #List portfolios
  result = api_instance.list_portfolios(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_portfolios: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**PortfoliosCollection**](PortfoliosCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_progress_messages**
> ProgressMessagesCollection list_progress_messages(order_item_id, opts)

Gets a list of progress messages in an item

Gets a list of progress messages associated with an order item. As the item is being processed the provider can update the progress messages. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
order_item_id = 'order_item_id_example' # String | The Order Item ID
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Gets a list of progress messages in an item
  result = api_instance.list_progress_messages(order_item_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_progress_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_item_id** | **String**| The Order Item ID | 
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**ProgressMessagesCollection**](ProgressMessagesCollection.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_provider_control_parameters**
> ProviderControlParameters list_provider_control_parameters(portfolio_item_id)

Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.

Gets the provider control parameters for a portfolio item. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
  result = api_instance.list_provider_control_parameters(portfolio_item_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_provider_control_parameters: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 

### Return type

[**ProviderControlParameters**](ProviderControlParameters.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_service_plans**
> Array&lt;ServicePlan&gt; list_service_plans(portfolio_item_id)

Gets all service plans for a specific portfolio item; requires a connection to the topology service.

Gets all service plans for a portfolio item. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Gets all service plans for a specific portfolio item; requires a connection to the topology service.
  result = api_instance.list_service_plans(portfolio_item_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->list_service_plans: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 

### Return type

[**Array&lt;ServicePlan&gt;**](ServicePlan.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **share_info**
> Array&lt;ShareInfo&gt; share_info(portfolio_id)

Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group

Fetch share information about a portfolio 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID

begin
  #Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
  result = api_instance.share_info(portfolio_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->share_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 

### Return type

[**Array&lt;ShareInfo&gt;**](ShareInfo.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_order_item**
> OrderItem show_order_item(order_id, id)

Gets an individual order item from a given order

Gets an order item associated with an order. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
order_id = 'order_id_example' # String | The Order ID
id = 'id_example' # String | ID of the resource

begin
  #Gets an individual order item from a given order
  result = api_instance.show_order_item(order_id, id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->show_order_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 
 **id** | **String**| ID of the resource | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_portfolio**
> Portfolio show_portfolio(id)

Get a specific portfolio

Gets the portfolio specified by the portfolio ID. 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
id = 'id_example' # String | ID of the resource

begin
  #Get a specific portfolio
  result = api_instance.show_portfolio(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->show_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_portfolio_item**
> PortfolioItem show_portfolio_item(id)

Gets a specific portfolio item

Gets a specific portfolio item based on the portfolio item ID passed 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure API key authorization: APIKeyAuth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::UsersApi.new
id = 'id_example' # String | ID of the resource

begin
  #Gets a specific portfolio item
  result = api_instance.show_portfolio_item(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling UsersApi->show_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**PortfolioItem**](PortfolioItem.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



