# domain: verify

Validates the ownership of the domain.

> **Important:** Only applies to an unverified domain. For an unverified domain, the isVerified property of the [domain](../resources/domain.md) is false.

### Prerequisites

The following **scopes** are required to execute this API: *Directory.Read.All* or *Domain.ReadWrite.All*

### HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /domains/{id}/verify
```

> For {id}, specify the domain with its fully qualified domain name.

### Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer &lt;token&gt; Required|
| Content-Type  | application/json |

### Request body

### Response
If successful, this method returns `200, OK` response code and [domain](../resources/domain.md) object in the response body.

### Example
##### Request
<!-- {
  "blockType": "request",
  "name": "domain_verify"
}-->
```http
POST https://graph.microsoft.com/beta/domains/contoso.com/verify
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
  "isAdminManaged": true,
  "isDefault": true,
  "isInitial": true,
  "isRoot": true,
  "name": "contoso.com"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domain: verify",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->