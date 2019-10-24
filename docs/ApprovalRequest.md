# CatalogApiClient::ApprovalRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this approval request. | [optional] 
**approval_request_ref** | **String** | The id of the approval submitted to approval-api | [optional] 
**order_item_id** | **String** | The Order Item which the approval request belongs to | [optional] 
**reason** | **String** | The reason for the current state. | [optional] 
**request_completed_at** | **DateTime** |  | [optional] 
**state** | **String** | The state of the approval request (approved, denied, undecided, canceled) | [optional] 
**workflow_ref** | **String** | The workflow that was requested | [optional] 


