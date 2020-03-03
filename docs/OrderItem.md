# CatalogApiClient::OrderItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] [readonly] 
**count** | **Integer** |  | [default to 1]
**service_parameters** | [**Object**](.md) |  | [optional] 
**provider_control_parameters** | [**Object**](.md) | The provider specific parameters needed to provision this service. This might include namespaces, special keys. | [optional] 
**portfolio_item_id** | **String** | Stores the Portfolio Item ID. | 
**state** | **String** | Current state of this order item. | [optional] [readonly] 
**order_id** | **String** | The Order that the OrderItem belongs to. | [optional] 
**created_at** | **DateTime** |  | [optional] [readonly] 
**order_request_sent_at** | **DateTime** | The time at which the order request was sent to the Topology Service | [optional] [readonly] 
**completed_at** | **DateTime** |  | [optional] [readonly] 
**updated_at** | **DateTime** |  | [optional] [readonly] 
**owner** | **String** |  | [optional] [readonly] 
**external_url** | **String** | The external url of the service instance used with relation to this order item | [optional] 
**insights_request_id** | **String** | The insights request id can be used to collect log data for this order item as its processed by the system | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::OrderItem.new(id: null,
                                 count: null,
                                 service_parameters: null,
                                 provider_control_parameters: null,
                                 portfolio_item_id: null,
                                 state: null,
                                 order_id: null,
                                 created_at: null,
                                 order_request_sent_at: null,
                                 completed_at: null,
                                 updated_at: null,
                                 owner: jdoe,
                                 external_url: null,
                                 insights_request_id: 364498f142194beba576833d7303abe5)
```


