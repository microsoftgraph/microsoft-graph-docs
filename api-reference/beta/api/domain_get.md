# Get domain

Retrieve the properties and relationships of domain object.

### Prerequisites

One of the following **scopes** are required to execute this API: *Directory.Read.All* or *Domain.ReadWrite.All*

### HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /domains/{id}
```

> For {id}, specify the domain with its fully qualified domain name.

### Optional query parameters

This method supports the [OData Query Parameters](http://graph.microsoft.io/docs/overview/query_parameters) to help customize the response.

### Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer &lt;token&gt; *Required* |
| Content-Type  | application/json |

### Request body
Do not supply a request body for this method.
### Response
If successful, this method returns a `200 OK` response code and [domain](../resources/domain.md) object in the response body.
### Example
##### Request

<!-- {
  "blockType": "request",
  "name": "get_domain"
}-->
```http
GET https://graph.microsoft.com/beta/domains/contoso.com
```
##### Response
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.domain"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 192

{
  "authenticationType": "authenticationType-value",
  "availabilityStatus": "availabilityStatus-value",
  "id": "contoso.com",
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get domain",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->