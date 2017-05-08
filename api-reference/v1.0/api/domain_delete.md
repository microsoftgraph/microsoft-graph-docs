# Delete domain

Deletes a domain from a tenant.

> **Important:**
> - Deleted domains are not recoverable.<br />
> - Attempts to delete will fail if there are any resources or objects still dependent on the domain. You can find all dependent resources by using the [List domainNameReferences](domain_list_domainnamereferences.md) API.

### Prerequisites

One of the following **scopes** is required to execute this API: *Domain.ReadWrite.All* or *Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /domains/{id}
```

> For {id}, specify the domain with its fully qualified domain name.

### Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt; *Required* |
| Content-Type  | application/json |

### Request body

Do not supply a request body for this method.

### Response

If successful, this method returns `204, No Content` response code. It does not return a response body.

### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "delete_domain"
}-->
```http
DELETE https://graph.microsoft.com/V1.0/domains/contoso.com
```

##### Response

Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete domain",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->