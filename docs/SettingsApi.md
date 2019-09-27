# CatalogApiClient::SettingsApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_setting**](SettingsApi.md#create_setting) | **POST** /settings | Create Tenant Setting
[**destroy_setting**](SettingsApi.md#destroy_setting) | **DELETE** /settings/{name} | Delete a Tenant Setting
[**list_settings**](SettingsApi.md#list_settings) | **GET** /settings | List Tenant Settings
[**show_setting**](SettingsApi.md#show_setting) | **GET** /settings/{name} | Get a specific Tenant Setting
[**update_setting**](SettingsApi.md#update_setting) | **PATCH** /settings/{name} | Update a Tenant Setting


# **create_setting**
> create_setting(setting)

Create Tenant Setting

Create Tenant Setting

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

api_instance = CatalogApiClient::SettingsApi.new
setting = CatalogApiClient::Setting.new # Setting | Json encoded key/value pair to create a new setting

begin
  #Create Tenant Setting
  api_instance.create_setting(setting)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling SettingsApi->create_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setting** | [**Setting**](Setting.md)| Json encoded key/value pair to create a new setting | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **destroy_setting**
> destroy_setting(name)

Delete a Tenant Setting

Delete a Tenant Setting

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

api_instance = CatalogApiClient::SettingsApi.new
name = 'name_example' # String | name of the setting

begin
  #Delete a Tenant Setting
  api_instance.destroy_setting(name)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling SettingsApi->destroy_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the setting | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **list_settings**
> TenantSettings list_settings

List Tenant Settings

List Tenant Settings

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

api_instance = CatalogApiClient::SettingsApi.new

begin
  #List Tenant Settings
  result = api_instance.list_settings
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling SettingsApi->list_settings: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**TenantSettings**](TenantSettings.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_setting**
> show_setting(name)

Get a specific Tenant Setting

Get a specific Tenant Setting

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

api_instance = CatalogApiClient::SettingsApi.new
name = 'name_example' # String | name of the setting

begin
  #Get a specific Tenant Setting
  api_instance.show_setting(name)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling SettingsApi->show_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the setting | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_setting**
> update_setting(name)

Update a Tenant Setting

Update a Tenant Setting

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

api_instance = CatalogApiClient::SettingsApi.new
name = 'name_example' # String | name of the setting

begin
  #Update a Tenant Setting
  api_instance.update_setting(name)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling SettingsApi->update_setting: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the setting | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



