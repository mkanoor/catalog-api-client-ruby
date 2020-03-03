# CatalogApiClient::ServicePlan

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | The name of the service plan. | [optional] [readonly] 
**description** | **String** | The service plan description. | [optional] [readonly] 
**create_json_schema** | [**Object**](.md) | JSON schema for the object. | [optional] [readonly] 
**portfolio_item_id** | **String** | The reference ID of the Portfolio Item | [optional] [readonly] 
**id** | **String** | The unique identifier for this service plan. | [optional] [readonly] 
**imported** | **Boolean** | Whether or not the ServicePlan has been imported for editing | [optional] [readonly] 
**modified** | **Boolean** | Whether or not the ServicePlan has a modified schema | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::ServicePlan.new(name: null,
                                 description: null,
                                 create_json_schema: null,
                                 portfolio_item_id: null,
                                 id: null,
                                 imported: null,
                                 modified: null)
```


