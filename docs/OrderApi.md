# CatalogApiClient::OrderApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_to_order**](OrderApi.md#add_to_order) | **POST** /orders/{order_id}/order_items | Add an order item to an order in pending state
[**create_order**](OrderApi.md#create_order) | **POST** /orders | Create a new order
[**list_order_items**](OrderApi.md#list_order_items) | **GET** /orders/{order_id}/order_items | Gets a list of items in a given order
[**list_orders**](OrderApi.md#list_orders) | **GET** /orders | Get a list of orders
[**show_order_item**](OrderApi.md#show_order_item) | **GET** /orders/{order_id}/order_items/{id} | Gets an individual order item from a given order
[**submit_order**](OrderApi.md#submit_order) | **POST** /orders/{order_id}/submit_order | Submit a given order


# **add_to_order**
> add_to_order(order_id, order_item)

Add an order item to an order in pending state

Adds an order item to an order in pending state 

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

api_instance = CatalogApiClient::OrderApi.new
order_id = 'order_id_example' # String | The Order ID
order_item = CatalogApiClient::OrderItem.new # OrderItem | 

begin
  #Add an order item to an order in pending state
  api_instance.add_to_order(order_id, order_item)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderApi->add_to_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 
 **order_item** | [**OrderItem**](OrderItem.md)|  | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **create_order**
> Order create_order

Create a new order

Creates a new order. 

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

api_instance = CatalogApiClient::OrderApi.new

begin
  #Create a new order
  result = api_instance.create_order
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderApi->create_order: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Order**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_order_items**
> OrderItemsCollection list_order_items(order_id, opts)

Gets a list of items in a given order

Gets a list of items associated with an order. 

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

api_instance = CatalogApiClient::OrderApi.new
order_id = 'order_id_example' # String | The Order ID
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Gets a list of items in a given order
  result = api_instance.list_order_items(order_id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderApi->list_order_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**OrderItemsCollection**](OrderItemsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_orders**
> OrdersCollection list_orders(opts)

Get a list of orders

Gets a list of orders associated with the logged in user. 

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

api_instance = CatalogApiClient::OrderApi.new
opts = {
  limit: 100, # Integer | The numbers of items to return per page.
  offset: 0 # Integer | The number of items to skip before starting to collect the result set.
}

begin
  #Get a list of orders
  result = api_instance.list_orders(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderApi->list_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| The numbers of items to return per page. | [optional] [default to 100]
 **offset** | **Integer**| The number of items to skip before starting to collect the result set. | [optional] [default to 0]

### Return type

[**OrdersCollection**](OrdersCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_order_item**
> OrderItem show_order_item(order_id, id)

Gets an individual order item from a given order

Gets an order item associated with an order. 

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

api_instance = CatalogApiClient::OrderApi.new
order_id = 'order_id_example' # String | The Order ID
id = 'id_example' # String | ID of the resource

begin
  #Gets an individual order item from a given order
  result = api_instance.show_order_item(order_id, id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderApi->show_order_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 
 **id** | **String**| ID of the resource | 

### Return type

[**OrderItem**](OrderItem.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **submit_order**
> Order submit_order(order_id)

Submit a given order

Returns an updated order. 

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

api_instance = CatalogApiClient::OrderApi.new
order_id = 'order_id_example' # String | The Order ID

begin
  #Submit a given order
  result = api_instance.submit_order(order_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling OrderApi->submit_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_id** | **String**| The Order ID | 

### Return type

[**Order**](Order.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



