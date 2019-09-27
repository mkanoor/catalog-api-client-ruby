# CatalogApiClient::IconApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**destroy_icon**](IconApi.md#destroy_icon) | **DELETE** /icons/{id} | Delete an existing Icon
[**icons_id_get**](IconApi.md#icons_id_get) | **GET** /icons/{id} | Fetch an Icon by ID
[**icons_post**](IconApi.md#icons_post) | **POST** /icons | Create an Icon
[**override_icon**](IconApi.md#override_icon) | **POST** /icons/{id}/override | Override the specified Portfolio Item&#39;s Icon
[**show_icon_data**](IconApi.md#show_icon_data) | **GET** /icons/{id}/icon_data | Fetches the specified icon&#39;s image
[**update_icon**](IconApi.md#update_icon) | **PATCH** /icons/{id} | Edit an existing Icon


# **destroy_icon**
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



# **icons_id_get**
> Icon icons_id_get(id)

Fetch an Icon by ID

Fetch an Icon by ID

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
  #Fetch an Icon by ID
  result = api_instance.icons_id_get(id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->icons_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **icons_post**
> Icon icons_post(opts)

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
  icon: CatalogApiClient::Icon.new # Icon | 
}

begin
  #Create an Icon
  result = api_instance.icons_post(opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->icons_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **icon** | [**Icon**](Icon.md)|  | [optional] 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **override_icon**
> Icon override_icon(id, opts)

Override the specified Portfolio Item's Icon

Override the specified Portfolio Item's Icon

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
opts = {
  override_icon: CatalogApiClient::OverrideIcon.new # OverrideIcon | 
}

begin
  #Override the specified Portfolio Item's Icon
  result = api_instance.override_icon(id, opts)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->override_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **override_icon** | [**OverrideIcon**](OverrideIcon.md)|  | [optional] 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **show_icon_data**
> show_icon_data(id)

Fetches the specified icon's image

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

api_instance = CatalogApiClient::IconApi.new
id = 'id_example' # String | ID of the resource

begin
  #Fetches the specified icon's image
  api_instance.show_icon_data(id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->show_icon_data: #{e}"
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
 - **Accept**: image/svg+xml



# **update_icon**
> Icon update_icon(id, icon)

Edit an existing Icon

Edits Icon specified by the given ID.

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
icon = CatalogApiClient::Icon.new # Icon | Parameters needed to update an Icon

begin
  #Edit an existing Icon
  result = api_instance.update_icon(id, icon)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling IconApi->update_icon: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the resource | 
 **icon** | [**Icon**](Icon.md)| Parameters needed to update an Icon | 

### Return type

[**Icon**](Icon.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



