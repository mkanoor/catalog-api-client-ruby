# CatalogApiClient::ShareInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_uuid** | **String** | The Group UUID | [optional] 
**group_name** | **String** | The Group Name | [optional] 
**permissions** | **Array&lt;String&gt;** | One or more permissions currently applied to this group. | [optional] 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::ShareInfo.new(group_uuid: null,
                                 group_name: null,
                                 permissions: null)
```


