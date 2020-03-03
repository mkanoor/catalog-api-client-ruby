# CatalogApiClient::SharePolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | **Array&lt;String&gt;** | The permissions to apply for this share. The valid values are read, update, delete and order | 
**group_uuids** | **Array&lt;String&gt;** | An array of group UUID&#39;s retrieved from the RBAC Service with whom the resource has to be shared. | 

## Code Sample

```ruby
require 'CatalogApiClient'

instance = CatalogApiClient::SharePolicy.new(permissions: [&quot;read&quot;,&quot;update&quot;,&quot;delete&quot;,&quot;order&quot;],
                                 group_uuids: null)
```


