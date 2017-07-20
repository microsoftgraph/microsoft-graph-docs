# Create groupLifecyclePolicy

Creates a new [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md).

### Prerequisites

The following **scopes** are required to execute this API: *Directory.ReadWrite.All*

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groupLifecyclePolicies

```

### Request headers

| Name | Description |
|:---------------|:----------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json |

### Request body
In the request body, supply a JSON representation of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) object.

### Response

If successful, this method returns `201, Created` response code and [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) object in the response body.

### Example

##### Request

<!-- {
  "blockType": "request",
  "name": "create_grouplifecyclepolicy_from_group"
}-->
```http
POST https://graph.microsoft.com/beta/groupLifecyclePolicies
Content-type: application/json
Content-length: 151

{
  "groupLifetimeInDays": 99,
  "managedGroupTypes": "managedGroupTypes-value",
  "alternateNotificationEmails": "alternateNotificationEmails-value"
}
```
In the request body, supply a JSON representation of [groupLifecyclePolicy](../resources/grouplifecyclepolicy.md) object.
##### Response

Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.groupLifecyclePolicy"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 171

{
  "id": "id-value",
  "groupLifetimeInDays": 99,
  "managedGroupTypes": "managedGroupTypes-value",
  "alternateNotificationEmails": "alternateNotificationEmails-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create groupLifecyclePolicy",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->