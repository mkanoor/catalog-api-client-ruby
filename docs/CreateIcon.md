# CatalogApiClient::CreateIcon

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | **File** | The binary image contents, maximum size is 250KB | [optional] 
**portfolio_id** | **String** | The Portfolio this Icon belongs to | [optional] 
**portfolio_item_id** | **String** | The Portfolio Item this Icon belongs to | [optional] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::CreateIcon.new(content: null,
                                 portfolio_id: 1,
                                 portfolio_item_id: 1)
```


