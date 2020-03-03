# CatalogApiClient::CreatePortfolioItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**portfolio_id** | **String** | The Portfolio this portfolio item should belong to | 
**service_offering_ref** | **String** | The service offering ref should be retrieved from a call to the Topology Service. | [optional] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::CreatePortfolioItem.new(portfolio_id: 1,
                                 service_offering_ref: 177)
```


