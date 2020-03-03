# CatalogApiClient::Icon

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this Service Offering Icon | [optional] [readonly] 
**image_id** | **String** | The Image reference containing the binary image data for this icon | [optional] 
**source_ref** | **String** | Stores the Source Ref for this icon | [optional] [readonly] 
**source_id** | **String** | The source ID for this icon | [optional] [readonly] 
**portfolio_id** | **String** | The portfolio this icon belongs to. | [optional] [readonly] 
**portfolio_item_id** | **String** | The portfolio_item this icon belongs to. | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::Icon.new(id: null,
                                 image_id: null,
                                 source_ref: null,
                                 source_id: null,
                                 portfolio_id: null,
                                 portfolio_item_id: null)
```


