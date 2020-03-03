# CatalogApiClient::Portfolio

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**enabled** | **Boolean** |  | [optional] [default to false]
**owner** | **String** |  | [optional] [readonly] 
**icon_id** | **String** | The Portfolio Icon ID | [optional] [readonly] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::Portfolio.new(id: null,
                                 name: Sample Portfolio,
                                 description: This is a sample description for a portfolio.,
                                 enabled: false,
                                 owner: jdoe,
                                 icon_id: 1,
                                 created_at: null,
                                 updated_at: null)
```


