# CatalogApiClient::PortfolioItemApi

All URIs are relative to *https://localhost/api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_portfolio_item**](PortfolioItemApi.md#create_portfolio_item) | **POST** /portfolio_items | Add a new portfolio item
[**destroy_portfolio_item**](PortfolioItemApi.md#destroy_portfolio_item) | **DELETE** /portfolio_items/{id} | Delete an existing portfolio item
[**list_portfolio_items**](PortfolioItemApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
[**list_provider_control_parameters**](PortfolioItemApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
[**list_service_plans**](PortfolioItemApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
[**show_portfolio_item**](PortfolioItemApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item
[**update_portfolio_item**](PortfolioItemApi.md#update_portfolio_item) | **PATCH** /portfolio_items/{id} | Edit an existing portfolio item


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

api_instance = CatalogApiClient::PortfolioItemApi.new
create_portfolio_item = CatalogApiClient::CreatePortfolioItem.new # CreatePortfolioItem | 

begin
  #Add a new portfolio item
  result = api_instance.create_portfolio_item(create_portfolio_item)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->create_portfolio_item: #{e}"
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

api_instance = CatalogApiClient::PortfolioItemApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing portfolio item
  api_instance.destroy_portfolio_item(id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->destroy_portfolio_item: #{e}"
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

api_instance = CatalogApiClient::PortfolioItemApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #List all portfolio items
  result = api_instance.list_portfolio_items(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->list_portfolio_items: #{e}"
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

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
  result = api_instance.list_provider_control_parameters(portfolio_item_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->list_provider_control_parameters: #{e}"
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

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Gets all service plans for a specific portfolio item; requires a connection to the topology service.
  result = api_instance.list_service_plans(portfolio_item_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->list_service_plans: #{e}"
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

api_instance = CatalogApiClient::PortfolioItemApi.new
id = 'id_example' # String | ID of the resource

begin
  #Gets a specific portfolio item
  result = api_instance.show_portfolio_item(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->show_portfolio_item: #{e}"
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



# **update_portfolio_item**
> PortfolioItem update_portfolio_item(id, portfolio_item)

Edit an existing portfolio item

Edits portfolio item specified by the given ID.

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

api_instance = CatalogApiClient::PortfolioItemApi.new
id = 'id_example' # String | ID of the resource
portfolio_item = CatalogApiClient::PortfolioItem.new # PortfolioItem | Parameters needed to update a Portfolio Item

begin
  #Edit an existing portfolio item
  result = api_instance.update_portfolio_item(id, portfolio_item)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->update_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **portfolio_item** | [**PortfolioItem**](PortfolioItem.md)| Parameters needed to update a Portfolio Item | 

### Return type

[**PortfolioItem**](PortfolioItem.md)

### Authorization

[APIKeyAuth](../README.md#APIKeyAuth), [BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



