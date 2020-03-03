# CatalogApiClient::CopyPortfolioItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portfolio_id** | **String** | The portfolio to place the new copy of the Portfolio Item in | [optional] 
**portfolio_item_name** | **String** | The name of the copied portfolio item | [optional] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::CopyPortfolioItem.new(portfolio_id: 2,
                                 portfolio_item_name: nginx copy)
```


