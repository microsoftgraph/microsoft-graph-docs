# Create group

Use this API to create a new group.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups

```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|
| Workbook-Session-Id  | Workbook session Id that determines if changes are persisted or not. Optional.|

### Request body
In the request body, supply a JSON representation of [group](../resources/group.md) object.


### Response
If successful, this method returns `201, Created` response code and [group](../resources/group.md) object in the response body.

### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_group_from_groups"
}-->
```http
POST https://graph.microsoft.com/beta/groups
Content-type: application/json
Content-length: 244

{
  "group": {
    "description": "description-value",
    "displayName": "displayName-value",
    "groupTypes": [
      "groupTypes-value"
    ],
    "mail": "mail-value",
    "mailEnabled": true,
    "mailNickname": "mailNickname-value"
  }
}
```
In the request body, supply a JSON representation of [group](../resources/group.md) object.
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 244

{
  "group": {
    "description": "description-value",
    "displayName": "displayName-value",
    "groupTypes": [
      "groupTypes-value"
    ],
    "mail": "mail-value",
    "mailEnabled": true,
    "mailNickname": "mailNickname-value"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create group",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->