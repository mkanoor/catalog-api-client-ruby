# CatalogApiClient::TenantApi

All URIs are relative to *https://cloud.redhat.com//api/catalog/v1.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_tenants**](TenantApi.md#list_tenants) | **GET** /tenants | List Tenants
[**show_tenant**](TenantApi.md#show_tenant) | **GET** /tenants/{tenant_id} | Get a specific Tenant
[**tenant_seed**](TenantApi.md#tenant_seed) | **POST** /tenants/{tenant_id}/seed | Seed Tenant Groups



## list_tenants

> TenantsCollection list_tenants

List Tenants

Get a list of tenants.

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

api_instance = CatalogApiClient::TenantApi.new

begin
  #List Tenants
  result = api_instance.list_tenants
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TenantApi->list_tenants: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TenantsCollection**](TenantsCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## show_tenant

> Tenant show_tenant(tenant_id)

Get a specific Tenant

Gets the tenant specified by the tenant id.

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

api_instance = CatalogApiClient::TenantApi.new
tenant_id = 'tenant_id_example' # String | ID of the resource

begin
  #Get a specific Tenant
  result = api_instance.show_tenant(tenant_id)
  p result
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TenantApi->show_tenant: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| ID of the resource | 

### Return type

[**Tenant**](Tenant.md)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## tenant_seed

> tenant_seed(tenant_id)

Seed Tenant Groups

Run a task to seed the Tenant Groups required for an org admin to onboard additional users.

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

api_instance = CatalogApiClient::TenantApi.new
tenant_id = 'tenant_id_example' # String | ID of the resource

begin
  #Seed Tenant Groups
  api_instance.tenant_seed(tenant_id)
rescue CatalogApiClient::ApiError => e
  puts "Exception when calling TenantApi->tenant_seed: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tenant_id** | **String**| ID of the resource | 

### Return type

nil (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

