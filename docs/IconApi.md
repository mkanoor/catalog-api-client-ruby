# CatalogApiClient::IconApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_icon**](IconApi.md#create_icon) | **POST** /icons | Create an Icon
[**destroy_icon**](IconApi.md#destroy_icon) | **DELETE** /icons/{id} | Delete an existing Icon



## create_icon

> Icon create_icon(opts)

Create an Icon

Creates an Icon from the specified parameters

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

api_instance = CatalogApiClient::IconApi.new
opts = {
  content: File.new('/path/to/file'), # File | The binary image contents, maximum size is 250KB
  portfolio_id: 'portfolio_id_example', # String | The Portfolio this Icon belongs to
  portfolio_item_id: 'portfolio_item_id_example' # String | The Portfolio Item this Icon belongs to
}

begin
  #Create an Icon
  result = api_instance.create_icon(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->create_icon: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content** | **File**| The binary image contents, maximum size is 250KB | [optional] 
 **portfolio_id** | **String**| The Portfolio this Icon belongs to | [optional] 
 **portfolio_item_id** | **String**| The Portfolio Item this Icon belongs to | [optional] 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## destroy_icon

> destroy_icon(id)

Delete an existing Icon

Deletes the icon based on the icon ID passed

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

api_instance = CatalogApiClient::IconApi.new
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing Icon
  api_instance.destroy_icon(id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->destroy_icon: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

