# CatalogApiClient::DefaultApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_documentation**](DefaultApi.md#get_documentation) | **GET** /openapi.json | Return this API document in JSON format
[**post_graph_ql**](DefaultApi.md#post_graph_ql) | **POST** /graphql | Perform a GraphQL Query


# **get_documentation**
> get_documentation

Return this API document in JSON format

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

api_instance = CatalogApiClient::DefaultApi.new

begin
  #Return this API document in JSON format
  api_instance.get_documentation
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling DefaultApi->get_documentation: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **post_graph_ql**
> InlineResponse200 post_graph_ql(opts)

Perform a GraphQL Query

Performs a GraphQL Query

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

api_instance = CatalogApiClient::DefaultApi.new
opts = {
  inline_object: CatalogApiClient::InlineObject.new # InlineObject | 
}

begin
  #Perform a GraphQL Query
  result = api_instance.post_graph_ql(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling DefaultApi->post_graph_ql: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inline_object** | [**InlineObject**](InlineObject.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



