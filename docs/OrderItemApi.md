# CatalogApiClient::OrderItemApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destroy_order_item**](OrderItemApi.md#destroy_order_item) | **DELETE** /order_items/{id} | Delete an existing OrderItem
[**list_approval_requests**](OrderItemApi.md#list_approval_requests) | **GET** /order_items/{order_item_id}/approval_requests | Gets a list of approval requests for an item
[**list_order_items**](OrderItemApi.md#list_order_items) | **GET** /order_items | List Order Items
[**list_progress_messages**](OrderItemApi.md#list_progress_messages) | **GET** /order_items/{order_item_id}/progress_messages | Gets a list of progress messages in an item
[**restore_order_item**](OrderItemApi.md#restore_order_item) | **POST** /order_items/{id}/restore | Restore specific Order item
[**show_order_item**](OrderItemApi.md#show_order_item) | **GET** /order_items/{id} | Gets a specific order item


# **destroy_order_item**
> RestoreKey destroy_order_item(id)

Delete an existing OrderItem

Deletes the order item  based on order item ID passed 

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
id = 'id_example' # String | ID of the resource

begin
  #Delete an existing OrderItem
  result = api_instance.destroy_order_item(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderItemApi->destroy_order_item: #{e}"
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
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
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
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**ApprovalRequestsCollection**](ApprovalRequestsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_order_items**
> OrderItemsCollection list_order_items(opts)

List Order Items

Gets a list of order items. 

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
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
}

begin
  #List Order Items
  result = api_instance.list_order_items(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderItemApi->list_order_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**OrderItemsCollection**](OrderItemsCollection.md)

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
  offset: 0, # Integer | The number of items to skip before starting to collect the result set.
  filter: nil # Object | Filter for querying collections.
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
 **filter** | [**Object**](.md)| Filter for querying collections. | [optional] 

### Return type

[**ProgressMessagesCollection**](ProgressMessagesCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **restore_order_item**
> OrderItem restore_order_item(id, restore_key)

Restore specific Order item

Restores the order item specified by the order item ID. 

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
id = 'id_example' # String | ID of the resource
restore_key = CatalogApiClient::RestoreKey.new # RestoreKey | 

begin
  #Restore specific Order item
  result = api_instance.restore_order_item(id, restore_key)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderItemApi->restore_order_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **restore_key** | [**RestoreKey**](RestoreKey.md)|  | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **show_order_item**
> OrderItem show_order_item(id)

Gets a specific order item

Gets a specific order item based on the order item ID passed 

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
id = 'id_example' # String | ID of the resource

begin
  #Gets a specific order item
  result = api_instance.show_order_item(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderItemApi->show_order_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



