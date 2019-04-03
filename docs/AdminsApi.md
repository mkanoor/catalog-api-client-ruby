# CatalogApiClient::AdminsApi

All URIs are relative to *https://localhost/api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_portfolio_item_to_portfolio**](AdminsApi.md#add_portfolio_item_to_portfolio) | **POST** /portfolios/{portfolio_id}/portfolio_items | Add a portfolio item to a portfolio
[**add_to_order**](AdminsApi.md#add_to_order) | **POST** /orders/{order_id}/order_items | Add an order item to an order in pending state
[**create_order**](AdminsApi.md#create_order) | **POST** /orders | Create a new order
[**create_portfolio**](AdminsApi.md#create_portfolio) | **POST** /portfolios | Add a new portfolio
[**create_portfolio_item**](AdminsApi.md#create_portfolio_item) | **POST** /portfolio_items | Add a new portfolio item
[**destroy_portfolio**](AdminsApi.md#destroy_portfolio) | **DELETE** /portfolios/{id} | Delete an existing portfolio
[**destroy_portfolio_item**](AdminsApi.md#destroy_portfolio_item) | **DELETE** /portfolio_items/{id} | Delete an existing portfolio item
[**fetch_portfolio_items_with_portfolio**](AdminsApi.md#fetch_portfolio_items_with_portfolio) | **GET** /portfolios/{portfolio_id}/portfolio_items | Get all portfolio items from a specific portfolio
[**list_order_items**](AdminsApi.md#list_order_items) | **GET** /orders/{order_id}/order_items | Gets a list of items in a given order
[**list_orders**](AdminsApi.md#list_orders) | **GET** /orders | Get a list of orders
[**list_portfolio_items**](AdminsApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
[**list_portfolios**](AdminsApi.md#list_portfolios) | **GET** /portfolios | List portfolios
[**list_progress_messages**](AdminsApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item
[**list_provider_control_parameters**](AdminsApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
[**list_service_plans**](AdminsApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
[**share_info**](AdminsApi.md#share_info) | **GET** /portfolios/{portfolio_id}/share_info | Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
[**share_portfolio**](AdminsApi.md#share_portfolio) | **POST** /portfolios/{portfolio_id}/share | Share a portfolio with one or more groups with specific permission
[**show_order_item**](AdminsApi.md#show_order_item) | **GET** /orders/{order_id}/order_items/{id} | Gets an individual order item from a given order
[**show_portfolio**](AdminsApi.md#show_portfolio) | **GET** /portfolios/{id} | Get a specific portfolio
[**show_portfolio_item**](AdminsApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item
[**submit_order**](AdminsApi.md#submit_order) | **POST** /orders/{order_id}/submit_order | Submit a given order
[**unshare_portfolio**](AdminsApi.md#unshare_portfolio) | **POST** /portfolios/{portfolio_id}/unshare | Unshare a portfolio from one or more groups with specific permission
[**update_portfolio**](AdminsApi.md#update_portfolio) | **PATCH** /portfolios/{id} | Edit an existing portfolio


# **add_portfolio_item_to_portfolio**
> add_portfolio_item_to_portfolio(portfolio_id, add_portfolio_item)

Add a portfolio item to a portfolio

Adds a new portfolio item to an existing portfolio. 

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

api_instance = CatalogApiClient::AdminsApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
add_portfolio_item = CatalogApiClient::AddPortfolioItem.new # AddPortfolioItem | 

begin
  #Add a portfolio item to a portfolio
  api_instance.add_portfolio_item_to_portfolio(portfolio_id, add_portfolio_item)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->add_portfolio_item_to_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 
 **add_portfolio_item** | [**AddPortfolioItem**](AddPortfolioItem.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



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

api_instance = CatalogApiClient::AdminsApi.new
order_id = 'order_id_example' # String | The Order ID
order_item = CatalogApiClient::OrderItem.new # OrderItem | 

begin
  #Add an order item to an order in pending state
  api_instance.add_to_order(order_id, order_item)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->add_to_order: #{e}"
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



# **create_order**
> Order create_order

Create a new order

Creates a new order. 

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

api_instance = CatalogApiClient::AdminsApi.new

begin
  #Create a new order
  result = api_instance.create_order
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->create_order: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Order**](Order.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_portfolio**
> Portfolio create_portfolio(portfolio)

Add a new portfolio

Adds a portfolio. 

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

api_instance = CatalogApiClient::AdminsApi.new
portfolio = CatalogApiClient::Portfolio.new # Portfolio | Parameters needed to add a Portfolio

begin
  #Add a new portfolio
  result = api_instance.create_portfolio(portfolio)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->create_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio** | [**Portfolio**](Portfolio.md)| Parameters needed to add a Portfolio | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_portfolio_item**
> PortfolioItem create_portfolio_item(create_portfolio_item)

Add a new portfolio item

Adds a name and description for a portfolio item and returns the newly created portfolio item. 

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

api_instance = CatalogApiClient::AdminsApi.new
create_portfolio_item = CatalogApiClient::CreatePortfolioItem.new # CreatePortfolioItem | 

begin
  #Add a new portfolio item
  result = api_instance.create_portfolio_item(create_portfolio_item)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->create_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_portfolio_item** | [**CreatePortfolioItem**](CreatePortfolioItem.md)|  | 

### Return type

[**PortfolioItem**](PortfolioItem.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **destroy_portfolio**
> destroy_portfolio(id)

Delete an existing portfolio

Deletes the portfolio specified by the ID. 

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

api_instance = CatalogApiClient::AdminsApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing portfolio
  api_instance.destroy_portfolio(id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->destroy_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

nil (empty response body)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **destroy_portfolio_item**
> destroy_portfolio_item(id)

Delete an existing portfolio item

Deletes the portfolio item based on portfolio item ID passed 

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

api_instance = CatalogApiClient::AdminsApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing portfolio item
  api_instance.destroy_portfolio_item(id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->destroy_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

nil (empty response body)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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

api_instance = CatalogApiClient::AdminsApi.new
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
  puts "Exception when calling AdminsApi->fetch_portfolio_items_with_portfolio: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
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
  puts "Exception when calling AdminsApi->list_order_items: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Get a list of orders
  result = api_instance.list_orders(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->list_orders: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #List all portfolio items
  result = api_instance.list_portfolio_items(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->list_portfolio_items: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #List portfolios
  result = api_instance.list_portfolios(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->list_portfolios: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
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
  puts "Exception when calling AdminsApi->list_progress_messages: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
  result = api_instance.list_provider_control_parameters(portfolio_item_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->list_provider_control_parameters: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Gets all service plans for a specific portfolio item; requires a connection to the topology service.
  result = api_instance.list_service_plans(portfolio_item_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->list_service_plans: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID

begin
  #Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
  result = api_instance.share_info(portfolio_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->share_info: #{e}"
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



# **share_portfolio**
> share_portfolio(portfolio_id, share_policy)

Share a portfolio with one or more groups with specific permission

Share a Portfolio with one or more groups with specific permissions 

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

api_instance = CatalogApiClient::AdminsApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
share_policy = CatalogApiClient::SharePolicy.new # SharePolicy | 

begin
  #Share a portfolio with one or more groups with specific permission
  api_instance.share_portfolio(portfolio_id, share_policy)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->share_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 
 **share_policy** | [**SharePolicy**](SharePolicy.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



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

api_instance = CatalogApiClient::AdminsApi.new
order_id = 'order_id_example' # String | The Order ID
id = 'id_example' # String | ID of the resource

begin
  #Gets an individual order item from a given order
  result = api_instance.show_order_item(order_id, id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->show_order_item: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
id = 'id_example' # String | ID of the resource

begin
  #Get a specific portfolio
  result = api_instance.show_portfolio(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->show_portfolio: #{e}"
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

api_instance = CatalogApiClient::AdminsApi.new
id = 'id_example' # String | ID of the resource

begin
  #Gets a specific portfolio item
  result = api_instance.show_portfolio_item(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->show_portfolio_item: #{e}"
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



# **submit_order**
> Order submit_order(order_id)

Submit a given order

Returns an updated order. 

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

api_instance = CatalogApiClient::AdminsApi.new
order_id = 'order_id_example' # String | The Order ID

begin
  #Submit a given order
  result = api_instance.submit_order(order_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->submit_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 

### Return type

[**Order**](Order.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unshare_portfolio**
> unshare_portfolio(portfolio_id, unshare_policy)

Unshare a portfolio from one or more groups with specific permission

Unshare a Portfolio with one or more groups with specific permissions 

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

api_instance = CatalogApiClient::AdminsApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
unshare_policy = CatalogApiClient::UnsharePolicy.new # UnsharePolicy | 

begin
  #Unshare a portfolio from one or more groups with specific permission
  api_instance.unshare_portfolio(portfolio_id, unshare_policy)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->unshare_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 
 **unshare_policy** | [**UnsharePolicy**](UnsharePolicy.md)|  | 

### Return type

nil (empty response body)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **update_portfolio**
> Portfolio update_portfolio(id, portfolio)

Edit an existing portfolio

Returns the edited portfolio. 

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

api_instance = CatalogApiClient::AdminsApi.new
id = 'id_example' # String | ID of the resource
portfolio = CatalogApiClient::Portfolio.new # Portfolio | Parameters needed to update a Portfolio

begin
  #Edit an existing portfolio
  result = api_instance.update_portfolio(id, portfolio)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling AdminsApi->update_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **portfolio** | [**Portfolio**](Portfolio.md)| Parameters needed to update a Portfolio | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



