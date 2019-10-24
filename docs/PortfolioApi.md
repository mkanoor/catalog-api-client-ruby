# CatalogApiClient::PortfolioApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_portfolio_item_tag**](PortfolioApi.md#add_portfolio_item_tag) | **POST** /portfolio_items/{id}/tags | Add Tag for Portfolio
[**add_portfolio_item_to_portfolio**](PortfolioApi.md#add_portfolio_item_to_portfolio) | **POST** /portfolios/{portfolio_id}/portfolio_items | Add a portfolio item to a portfolio
[**add_portfolio_tag**](PortfolioApi.md#add_portfolio_tag) | **POST** /portfolios/{id}/tags | Add Tag for Portfolio
[**create_portfolio**](PortfolioApi.md#create_portfolio) | **POST** /portfolios | Add a new portfolio
[**destroy_portfolio**](PortfolioApi.md#destroy_portfolio) | **DELETE** /portfolios/{id} | Delete an existing portfolio
[**fetch_portfolio_items_with_portfolio**](PortfolioApi.md#fetch_portfolio_items_with_portfolio) | **GET** /portfolios/{portfolio_id}/portfolio_items | Get all portfolio items from a specific portfolio
[**list_portfolio_tags**](PortfolioApi.md#list_portfolio_tags) | **GET** /portfolios/{id}/tags | List Tags for Portfolio
[**list_portfolios**](PortfolioApi.md#list_portfolios) | **GET** /portfolios | List portfolios
[**post_copy_portfolio**](PortfolioApi.md#post_copy_portfolio) | **POST** /portfolios/{portfolio_id}/copy | Make a copy of the Portfolio
[**share_info**](PortfolioApi.md#share_info) | **GET** /portfolios/{portfolio_id}/share_info | Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
[**share_portfolio**](PortfolioApi.md#share_portfolio) | **POST** /portfolios/{portfolio_id}/share | Share a portfolio with one or more groups with specific permission
[**show_portfolio**](PortfolioApi.md#show_portfolio) | **GET** /portfolios/{id} | Get a specific portfolio
[**show_portfolio_icon**](PortfolioApi.md#show_portfolio_icon) | **GET** /portfolios/{portfolio_id}/icon | Fetches the specified portfolio&#39;s icon image
[**un_delete_portfolio**](PortfolioApi.md#un_delete_portfolio) | **POST** /portfolios/{id}/undelete | Undelete specific portfolio
[**unshare_portfolio**](PortfolioApi.md#unshare_portfolio) | **POST** /portfolios/{portfolio_id}/unshare | Unshare a portfolio from one or more groups with specific permission
[**update_portfolio**](PortfolioApi.md#update_portfolio) | **PATCH** /portfolios/{id} | Edit an existing portfolio


# **add_portfolio_item_tag**
> Tag add_portfolio_item_tag(id, tag_item)

Add Tag for Portfolio

Adds a single tag to Portfolio object

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

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource
tag_item = CatalogApiClient::TagItem.new # TagItem | 

begin
  #Add Tag for Portfolio
  result = api_instance.add_portfolio_item_tag(id, tag_item)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->add_portfolio_item_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **tag_item** | [**TagItem**](TagItem.md)|  | 

### Return type

[**Tag**](Tag.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
add_portfolio_item = CatalogApiClient::AddPortfolioItem.new # AddPortfolioItem | 

begin
  #Add a portfolio item to a portfolio
  api_instance.add_portfolio_item_to_portfolio(portfolio_id, add_portfolio_item)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->add_portfolio_item_to_portfolio: #{e}"
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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **add_portfolio_tag**
> Tag add_portfolio_tag(id, tag_item)

Add Tag for Portfolio

Adds a single tag to Portfolio object

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

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource
tag_item = CatalogApiClient::TagItem.new # TagItem | 

begin
  #Add Tag for Portfolio
  result = api_instance.add_portfolio_tag(id, tag_item)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->add_portfolio_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **tag_item** | [**TagItem**](TagItem.md)|  | 

### Return type

[**Tag**](Tag.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
portfolio = CatalogApiClient::Portfolio.new # Portfolio | Parameters needed to add a Portfolio

begin
  #Add a new portfolio
  result = api_instance.create_portfolio(portfolio)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->create_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio** | [**Portfolio**](Portfolio.md)| Parameters needed to add a Portfolio | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **destroy_portfolio**
> RestoreKey destroy_portfolio(id)

Delete an existing portfolio

Deletes the portfolio specified by the ID.

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

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing portfolio
  result = api_instance.destroy_portfolio(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->destroy_portfolio: #{e}"
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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
}

begin
  #Get all portfolio items from a specific portfolio
  result = api_instance.fetch_portfolio_items_with_portfolio(portfolio_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->fetch_portfolio_items_with_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 
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



# **list_portfolio_tags**
> TagsCollection list_portfolio_tags(id, opts)

List Tags for Portfolio

Returns an array of Tag objects

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

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
}

begin
  #List Tags for Portfolio
  result = api_instance.list_portfolio_tags(id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->list_portfolio_tags: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**TagsCollection**](TagsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
}

begin
  #List portfolios
  result = api_instance.list_portfolios(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->list_portfolios: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**PortfoliosCollection**](PortfoliosCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_copy_portfolio**
> Portfolio post_copy_portfolio(portfolio_id)

Make a copy of the Portfolio

Make a copy of the Portfolio.

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

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID

begin
  #Make a copy of the Portfolio
  result = api_instance.post_copy_portfolio(portfolio_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->post_copy_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID

begin
  #Fetch share information about this portfolio, the response would include a collection of groups and permissions with each group
  result = api_instance.share_info(portfolio_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->share_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 

### Return type

[**Array&lt;ShareInfo&gt;**](ShareInfo.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
share_policy = CatalogApiClient::SharePolicy.new # SharePolicy | 

begin
  #Share a portfolio with one or more groups with specific permission
  api_instance.share_portfolio(portfolio_id, share_policy)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->share_portfolio: #{e}"
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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource

begin
  #Get a specific portfolio
  result = api_instance.show_portfolio(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->show_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_portfolio_icon**
> show_portfolio_icon(portfolio_id)

Fetches the specified portfolio's icon image

Fetch the specified portfolio's icon image.

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

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID

begin
  #Fetches the specified portfolio's icon image
  api_instance.show_portfolio_icon(portfolio_id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->show_portfolio_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portfolio_id** | **String**| The Portfolio ID | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/svg+xml



# **un_delete_portfolio**
> Portfolio un_delete_portfolio(id, restore_key)

Undelete specific portfolio

Undeletes the portfolio specified by the portfolio ID.

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

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource
restore_key = CatalogApiClient::RestoreKey.new # RestoreKey | 

begin
  #Undelete specific portfolio
  result = api_instance.un_delete_portfolio(id, restore_key)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->un_delete_portfolio: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **restore_key** | [**RestoreKey**](RestoreKey.md)|  | 

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
portfolio_id = 'portfolio_id_example' # String | The Portfolio ID
unshare_policy = CatalogApiClient::UnsharePolicy.new # UnsharePolicy | 

begin
  #Unshare a portfolio from one or more groups with specific permission
  api_instance.unshare_portfolio(portfolio_id, unshare_policy)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->unshare_portfolio: #{e}"
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

[BasicAuth](../README.md#BasicAuth)

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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::PortfolioApi.new
id = 'id_example' # String | ID of the resource
portfolio = CatalogApiClient::Portfolio.new # Portfolio | Parameters needed to update a Portfolio

begin
  #Edit an existing portfolio
  result = api_instance.update_portfolio(id, portfolio)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling PortfolioApi->update_portfolio: #{e}"
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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



