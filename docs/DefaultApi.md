# CatalogApiClient::DefaultApi

All URIs are relative to *https://localhost/api/catalog*

Method | HTTP request | Description
------------- | ------------- | -------------
[**update_portfolio_item**](DefaultApi.md#update_portfolio_item) | **PATCH** /portfolio_items/{id} | Edit an existing portfolio item


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

api_instance = CatalogApiClient::DefaultApi.new
id = 'id_example' # String | ID of the resource
portfolio_item = CatalogApiClient::PortfolioItem.new # PortfolioItem | Parameters needed to update a Portfolio Item

begin
  #Edit an existing portfolio item
  result = api_instance.update_portfolio_item(id, portfolio_item)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling DefaultApi->update_portfolio_item: #{e}"
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



