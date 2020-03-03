# CatalogApiClient::TagsApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_tags**](TagsApi.md#list_tags) | **GET** /tags | List Tags



## list_tags

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

