# CatalogApiClient::PortfolioItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**favorite** | **Boolean** |  | [optional] 
**name** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**orphan** | **Boolean** |  | [optional] [readonly] 
**state** | **String** |  | [optional] [readonly] 
**long_description** | **String** |  | [optional] 
**distributor** | **String** |  | [optional] 
**documentation_url** | **String** |  | [optional] 
**support_url** | **String** |  | [optional] 
**owner** | **String** |  | [optional] [readonly] 
**service_offering_source_ref** | **String** | The source reference this product was created from | [optional] [readonly] 
**service_offering_type** | **String** | The service offering type stored by the Topology Service | [optional] [readonly] 
**portfolio_id** | **String** | ID of a parent portfolio | [optional] [readonly] 
**icon_id** | **String** | The Portfolio Item Icon ID | [optional] [readonly] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 
**metadata** | [**Object**](.md) | JSON Metadata about the portfolio item | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::PortfolioItem.new(id: null,
                                 favorite: false,
                                 name: Name of the portfolio item,
                                 description: Description of a portfolio item,
                                 orphan: false,
                                 state: The current state of a portfolio item,
                                 long_description: The longer description of a portfolio item,
                                 distributor: The name of the provider for this Item,
                                 documentation_url: The URL for documentation of the portfolio item,
                                 support_url: The URL for finding support for the portfolio item,
                                 owner: jdoe,
                                 service_offering_source_ref: 20,
                                 service_offering_type: job_template,
                                 portfolio_id: 1,
                                 icon_id: 1,
                                 created_at: null,
                                 updated_at: null,
                                 metadata: null)
```


