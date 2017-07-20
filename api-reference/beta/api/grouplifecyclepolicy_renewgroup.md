# groupLifecyclePolicy: renewgroup

Renews a group's expiration. When a group is renewed, the group expiration is extended by the number of days defined in the policy.

### Prerequisites

The following **scopes** are required to execute this API: *Directory.ReadWrite.All*
 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupLifecyclePolicies/{id}/renewGroup

```

### Request headers

| Name | Description |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json |

### Request body
In the request body, provide a JSON object with the following parameters.

| Parameter | Type | Description |
|:---------------|:--------|:----------|
|groupId|Guid| The id of the group to renew. |

### Response

If successful, this method returns `200, OK` response code. It does not return anything in the response body.

### Example

##### Request

<!-- {
  "blockType": "request",
  "name": "grouplifecyclepolicy_renewgroup"
}-->
```http
POST https://graph.microsoft.com/beta/groupLifecyclePolicies/{id}/renewGroup
Content-type: application/json
Content-length: 32

{
  "groupId": "groupId-value"
}
```

##### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy: renewgroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->