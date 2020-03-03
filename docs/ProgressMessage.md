# CatalogApiClient::ProgressMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**received_at** | **DateTime** |  | [optional] [readonly] 
**level** | **String** |  | [optional] [readonly] 
**message** | **String** |  | [optional] [readonly] 
**order_item_id** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::ProgressMessage.new(received_at: null,
                                 level: null,
                                 message: This is a sample message,
                                 order_item_id: null)
```


