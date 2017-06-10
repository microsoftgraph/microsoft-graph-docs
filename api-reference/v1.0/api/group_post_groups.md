# Create group

Use this API to create a new group as specified in the request body. You can create one of three types of groups:

* Office 365 group (unified group)
* Dynamic group
* Security group

> **Note**: Although Microsoft Teams is built on Office 365 groups, you can't currently create a team via this API. You can use the other group APIs to manage a team that has been created in the Microsoft Teams UI.

## Prerequisites
The following **scope** is required to execute this API: _Group.ReadWrite.All_ 
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups
```
## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
The following table shows the properties of the [group](../resources/group.md) resource that you must specify at a minimum when you create a group. 

| Property | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. Set this to **true** if creating an Office 365 group. Set this to **false** if creating dynamic or security group.|
| mailNickname | string | The mail alias for the group. |
| securityEnabled | boolean | Set to **true** for security-enabled groups. Set this to **true** if creating a dynamic or security group. Set this to **false** if creating an Office 365 group. |

Specify the **groupTypes** property if you're creating an Office 365 or dynamic group, as stated below.

| Type of group | **groupTypes** property |
|:--------------|:------------------------|
| Office 365 (aka unified group)| "Unified" | 
| Dynamic | "DynamicMembership" | 
| Security | Do not set. | 

Specify other writable properties as necessary for your group. For more information, see the properties of the [group](../resources/group.md) resource.

## Response
If successful, this method returns `201, Created` response code and [group](../resources/group.md) object in the response body.

## Example
##### Request
Here is an example of a request that creates an Office 365 group.
<!-- {
  "blockType": "request",
  "name": "create_group_from_groups"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-type: application/json
Content-length: 244

{
  "description": "Self help community for library",
  "displayName": "Library Assist",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "library",
  "securityEnabled": false
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. More properties will be returned from an actual call.
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
  "description": "Self help community for library",
  "displayName": "Library Assist",
  "groupTypes": [
    "Unified"
  ],
  "mail": "library@contoso.onmicrosoft.com",
  "mailEnabled": true,
  "mailNickname": "library",
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
