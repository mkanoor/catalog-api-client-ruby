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
**created_at** | **DateTime** |  | [optional] 
**ordered_at** | **DateTime** |  | [optional] 
**completed_at** | **DateTime** |  | [optional] 
**updated_at** | **DateTime** |  | [optional] 
**owner** | **String** |  | [optional] 


