# CatalogApiClient::Order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**user_id** | **String** |  | [optional] [readonly] 
**state** | **String** | Current State of the order. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**order_request_sent_at** | **DateTime** | The time at which the order request was sent to the Topology Service | [optional] 
**completed_at** | **DateTime** |  | [optional] [readonly] 
**owner** | **String** |  | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::Order.new(id: null,
                                 user_id: null,
                                 state: null,
                                 created_at: null,
                                 order_request_sent_at: null,
                                 completed_at: null,
                                 owner: jdoe)
```


