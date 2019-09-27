# CatalogApiClient::OrderItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**count** | **Integer** |  | [default to 1]
**service_parameters** | [**Object**](.md) |  | 
**provider_control_parameters** | [**Object**](.md) | The provider specific parameters needed to provision this service. This might include namespaces, special keys. | 
**service_plan_ref** | **String** | Stores the service plan ref from the Topology Service. | 
**portfolio_item_id** | **String** | Stores the Portfolio Item ID. | 
**state** | **String** | Current state of this order item. | [optional] 
**order_id** | **String** | The Order that the OrderItem belongs to. | [optional] 
**created_at** | **DateTime** |  | [optional] 
**order_request_sent_at** | **DateTime** | The time at which the order request was sent to the Topology Service | [optional] 
**completed_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**owner** | **String** |  | [optional] 
**external_url** | **String** | The external url of the service instance used with relation to this order item | [optional] 
**insights_request_id** | **String** | The insights request id can be used to collect log data for this order item as its processed by the system | [optional] 


