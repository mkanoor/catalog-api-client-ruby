# CatalogApiClient::PortfolioItemApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_icon_to_portfolio_item**](PortfolioItemApi.md#add_icon_to_portfolio_item) | **POST** /portfolio_items/{portfolio_item_id}/icon | Add an Icon to a Portfolio Item
[**create_portfolio_item**](PortfolioItemApi.md#create_portfolio_item) | **POST** /portfolio_items | Add a new portfolio item
[**destroy_portfolio_item**](PortfolioItemApi.md#destroy_portfolio_item) | **DELETE** /portfolio_items/{id} | Delete an existing portfolio item
[**get_portfolio_item_next_name**](PortfolioItemApi.md#get_portfolio_item_next_name) | **GET** /portfolio_items/{portfolio_item_id}/next_name | Get the next name for a the Portfolio Item prior to a copy operation
[**list_portfolio_items**](PortfolioItemApi.md#list_portfolio_items) | **GET** /portfolio_items | List all portfolio items
[**list_provider_control_parameters**](PortfolioItemApi.md#list_provider_control_parameters) | **GET** /portfolio_items/{portfolio_item_id}/provider_control_parameters | Gets the provider control parameters for this portfolio item; requires control paramaters provided when provisioning the portfolio item.
[**list_service_plans**](PortfolioItemApi.md#list_service_plans) | **GET** /portfolio_items/{portfolio_item_id}/service_plans | Gets all service plans for a specific portfolio item; requires a connection to the topology service.
[**portfolio_items_portfolio_item_id_undelete_post**](PortfolioItemApi.md#portfolio_items_portfolio_item_id_undelete_post) | **POST** /portfolio_items/{portfolio_item_id}/undelete | Undelete a specified Portfolio Item
[**post_copy_portfolio_item**](PortfolioItemApi.md#post_copy_portfolio_item) | **POST** /portfolio_items/{portfolio_item_id}/copy | Make a copy of the Portfolio Item
[**show_portfolio_item**](PortfolioItemApi.md#show_portfolio_item) | **GET** /portfolio_items/{id} | Gets a specific portfolio item
[**show_portfolio_item_icon**](PortfolioItemApi.md#show_portfolio_item_icon) | **GET** /portfolio_items/{portfolio_item_id}/icon | Fetches the specified portfolio item&#39;s icon image
[**update_portfolio_item**](PortfolioItemApi.md#update_portfolio_item) | **PATCH** /portfolio_items/{id} | Edit an existing portfolio item


# **add_icon_to_portfolio_item**
> Icon add_icon_to_portfolio_item(portfolio_item_id, add_icon)

Add an Icon to a Portfolio Item

Add an Icon to a Portfolio Item

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID
add_icon = CatalogApiClient::AddIcon.new # AddIcon | 

begin
  #Add an Icon to a Portfolio Item
  result = api_instance.add_icon_to_portfolio_item(portfolio_item_id, add_icon)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->add_icon_to_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 
 **add_icon** | [**AddIcon**](AddIcon.md)|  | 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **destroy_portfolio_item**
> RestoreKey destroy_portfolio_item(id)

Delete an existing portfolio item

Deletes the portfolio item based on portfolio item ID passed 

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing portfolio item
  result = api_instance.destroy_portfolio_item(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->destroy_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**RestoreKey**](RestoreKey.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_portfolio_item_next_name**
> PortfolioItemNextName get_portfolio_item_next_name(portfolio_item_id, opts)

Get the next name for a the Portfolio Item prior to a copy operation

Get the next name for a the Portfolio Item prior to a copy operation

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID
opts = {
  destination_portfolio_id: 'destination_portfolio_id_example' # String | The destination portfolio to compare names against
}

begin
  #Get the next name for a the Portfolio Item prior to a copy operation
  result = api_instance.get_portfolio_item_next_name(portfolio_item_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->get_portfolio_item_next_name: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 
 **destination_portfolio_id** | **String**| The destination portfolio to compare names against | [optional] 

### Return type

[**PortfolioItemNextName**](PortfolioItemNextName.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
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
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**PortfolioItemsCollection**](PortfolioItemsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

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

[BasicAuth](../README.md#BasicAuth)

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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **portfolio_items_portfolio_item_id_undelete_post**
> PortfolioItem portfolio_items_portfolio_item_id_undelete_post(portfolio_item_id, restore_key)

Undelete a specified Portfolio Item

If a record has been discarded, this operation will undelete it so it can be requested normally.

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID
restore_key = CatalogApiClient::RestoreKey.new # RestoreKey | 

begin
  #Undelete a specified Portfolio Item
  result = api_instance.portfolio_items_portfolio_item_id_undelete_post(portfolio_item_id, restore_key)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->portfolio_items_portfolio_item_id_undelete_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 
 **restore_key** | [**RestoreKey**](RestoreKey.md)|  | 

### Return type

[**PortfolioItem**](PortfolioItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_copy_portfolio_item**
> PortfolioItem post_copy_portfolio_item(portfolio_item_id, opts)

Make a copy of the Portfolio Item

Make a copy of the Portfolio Item.

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID
opts = {
  copy_portfolio_item: CatalogApiClient::CopyPortfolioItem.new # CopyPortfolioItem | 
}

begin
  #Make a copy of the Portfolio Item
  result = api_instance.post_copy_portfolio_item(portfolio_item_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->post_copy_portfolio_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 
 **copy_portfolio_item** | [**CopyPortfolioItem**](CopyPortfolioItem.md)|  | [optional] 

### Return type

[**PortfolioItem**](PortfolioItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_portfolio_item_icon**
> show_portfolio_item_icon(portfolio_item_id)

Fetches the specified portfolio item's icon image

Fetch the specified portfolio item's icon image.

### Example
```ruby
# load the gem
require 'catalog-api-client'
# setup authorization
CatalogApiClient.configure do |config|
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioItemApi.new
portfolio_item_id = 'portfolio_item_id_example' # String | The Portfolio Item ID

begin
  #Fetches the specified portfolio item's icon image
  api_instance.show_portfolio_item_icon(portfolio_item_id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioItemApi->show_portfolio_item_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_item_id** | **String**| The Portfolio Item ID | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/svg+xml



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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



