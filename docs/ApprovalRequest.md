# CatalogApiClient::ApprovalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | The unique identifier for this approval request. | [optional] [readonly] 
**approval_request_ref** | **String** | The id of the approval submitted to approval-api | [optional] [readonly] 
**order_item_id** | **String** | The Order Item which the approval request belongs to | [optional] [readonly] 
**reason** | **String** | The reason for the current state. | [optional] [readonly] 
**request_completed_at** | **DateTime** |  | [optional] [readonly] 
**state** | **String** | The state of the approval request (approved, denied, undecided, canceled) | [optional] [readonly] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::ApprovalRequest.new(id: null,
                                 approval_request_ref: null,
                                 order_item_id: null,
                                 reason: null,
                                 request_completed_at: null,
                                 state: null)
```


