# Update domain

Update the properties of domain object.

> **Important:** Only verified domains can be updated.

### Prerequisites
The following **scopes** are required to execute this API: *Domain.ReadWrite.All* or *Directory.AccessAsUser.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /domains/{id}

> For {id}, specify the domain with its fully qualified domain name.

```
### Request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer &lt;token&gt; Required|
| Content-Type  | application/json |

### Request body
In the request body, supply the values for relevant fields to be updated. Existing properties not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, only include changed values.

### Response
If successful, this method returns a `204 No Content` response code and no response body.
### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "update_domain"
}-->
```http
PATCH https://graph.microsoft.com/beta/domains/contoso.com
Content-type: application/json

{
  "isDefault": true,
  "supportedServices": [
    "Email",
    "OfficeCommunicationsOnline"
  ]
}
```
##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domain"
} -->
```http
HTTP/1.1 200 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update domain",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->