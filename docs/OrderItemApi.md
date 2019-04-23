# CatalogApiClient::OrderItemApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_approval_requests**](OrderItemApi.md#list_approval_requests) | **GET** /order_items/{order_item_id}/approval_requests | Gets a list of approval requests for an item
[**list_progress_messages**](OrderItemApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item


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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::OrderItemApi.new
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
  puts "Exception when calling OrderItemApi->list_approval_requests: #{e}"
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

[BasicAuth](../README.md#BasicAuth)

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
  # Configure HTTP basic authorization: BasicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = CatalogApiClient::OrderItemApi.new
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
  puts "Exception when calling OrderItemApi->list_progress_messages: #{e}"
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

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



