# Create group

Use this API to create a new group as specified in the request body. You can create one of 3 types of groups:
* Office 365 group (aka unified group)
* Dynamic group
* Security group

At a minimum, you must specify the properties required for the type of group you're creating. This includes:

| Type of group | **groupTypes** property | **securityEnabled** property | **mailEnabled** property |
|:--------------|:------------------------|:-----------------------------|:-------------------------|
| Office 365 | "Unified" | false | true |
| Dynamic | "DynamicMembership" | true | false |
| Security | Do not set. | true | false |

For more information, see the properties of the [group](../resources/group.md) resource.
### Prerequisites
The following **scope** is required to execute this API: _Group.ReadWrite.All_ 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups
```
### Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer <token>. Required. |

### Request body
In the request body, supply a JSON representation of [group](../resources/group.md) object.

The following table shows the properties that are required when you create a group.

| Parameter | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. |
| mailNickname | string | The mail alias for the group. |
| securityEnabled | boolean | Set to **true** for security-enabled groups. Set to **false** if creating an Office 365 group. |

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
  "description": "description-value",
  "displayName": "displayName-value",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "mailNickname-value",
  "securityEnabled": false
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
  "description": "description-value",
  "displayName": "displayName-value",
  "groupTypes": [
    "Unified"
  ],
  "mail": "mail-value",
  "mailEnabled": true,
  "mailNickname": "mailNickname-value",
  "securityEnabled": false
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
