# CatalogApiClient::TagsApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_tag_portfolio_items**](TagsApi.md#list_tag_portfolio_items) | **GET** /tags/{id}/portfolio_items | List Portfolio Items for Tag
[**list_tag_portfolios**](TagsApi.md#list_tag_portfolios) | **GET** /tags/{id}/portfolios | List Portfolios for Tag
[**list_tags**](TagsApi.md#list_tags) | **GET** /tags | List Tags
[**show_tag**](TagsApi.md#show_tag) | **GET** /tags/{id} | Show Tag


# **list_tag_portfolio_items**
> PortfolioItemsCollection list_tag_portfolio_items(id, opts)

List Portfolio Items for Tag

Returns an array of Portfolio Item objects

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

api_instance = CatalogApiClient::TagsApi.new
id = 'id_example' # String | ID of the resource
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
}

begin
  #List Portfolio Items for Tag
  result = api_instance.list_tag_portfolio_items(id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TagsApi->list_tag_portfolio_items: #{e}"
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

[**PortfolioItemsCollection**](PortfolioItemsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_tag_portfolios**
> PortfoliosCollection list_tag_portfolios(id, opts)

List Portfolios for Tag

Returns an array of Portfolio objects

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

api_instance = CatalogApiClient::TagsApi.new
id = 'id_example' # String | ID of the resource
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
}

begin
  #List Portfolios for Tag
  result = api_instance.list_tag_portfolios(id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TagsApi->list_tag_portfolios: #{e}"
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

[**PortfoliosCollection**](PortfoliosCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_tags**
> TagsCollection list_tags

List Tags

List Tags

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

api_instance = CatalogApiClient::TagsApi.new

begin
  #List Tags
  result = api_instance.list_tags
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TagsApi->list_tags: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TagsCollection**](TagsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_tag**
> Tag show_tag(id)

Show Tag

Show a specific Tag

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

api_instance = CatalogApiClient::TagsApi.new
id = 'id_example' # String | ID of the resource

begin
  #Show Tag
  result = api_instance.show_tag(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TagsApi->show_tag: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**Tag**](Tag.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



