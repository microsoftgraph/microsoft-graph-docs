---
title: "Create group"
description: "Use this API to create a new group as specified in the request body. You can create one of three types of groups:"
author: "dkershaw10"
localization_priority: Priority
ms.prod: "groups"
---

# Create group
Use this API to create a new group as specified in the request body. You can create one of three types of groups:

* Office 365 Group (unified group)
* Dynamic group
* Security group

This operation returns by default only a subset of the properties for each group. These default properties are noted in the [Properties](../resources/group.md#properties) section.

To get properties that are _not_ returned by default, do a GET operation and specify the properties in a `$select` OData query option. See an [example](group-get.md#request-2).

> **Note**: Although Microsoft Teams is built on Office 365 Groups, you can't currently create a team via this API. You can use the other group APIs to manage a team that has been created in the Microsoft Teams UI.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups
```

## Request headers
| Name       | Type | Description|
|:---------------|:--------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type  | application/json  |

## Request body
The following table shows the properties of the [group](../resources/group.md) resource to specify when you create a group. 

| Property | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. Required. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. Set this to **true** if creating an Office 365 Group. Set this to **false** if creating dynamic or security group. Required. |
| mailNickname | string | The mail alias for the group. Required. |
| securityEnabled | boolean | Set to **true** for security-enabled groups. Set this to **true** if creating a dynamic or security group. Set this to **false** if creating an Office 365 group. Required. |
| owners | string collection | This property represents the owners for the group at creation time. Optional. |
| members | string collection | This property represents the members for the group at creation time. Optional. |


Specify the **groupTypes** property if you're creating an Office 365 or dynamic group, as stated below.

### groupTypes options

| Type of group | **groupTypes** property |
|:--------------|:------------------------|
| Office 365 (aka unified group)| "Unified" |
| Dynamic | "DynamicMembership" |
| Security | Do not set. |


>**Note:** Creating an Office 365 Group programmatically without a user context and  without specifying owners will create the group anonymously.  Doing so can result in the associated SharePoint Online site not being created automatically until further manual action is taken.  

Specify other writable properties as necessary for your group. For more information, see the properties of the [group](../resources/group.md) resource.

## Response
If successful, this method returns `201 Created` response code and [group](../resources/group.md) object in the response body. The response includes only the default properties of the group.

## Example
#### Request 1
The first example request creates an Office 365 Group.
<!-- {
  "blockType": "request",
  "name": "create_group"
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

#### Response 1
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the default properties are returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_group"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "b320ee12-b1cd-4cca-b648-a437be61c5cd",
	  "deletedDateTime": null,
	  "classification": null,
	  "createdDateTime": "2018-12-22T00:51:37Z",
	  "creationOptions": [],
	  "description": "Self help community for library",
	  "displayName": "Library Assist",
	  "groupTypes": [
	      "Unified"
	  ],
	  "mail": "library7423@contoso.com",
	  "mailEnabled": true,
	  "mailNickname": "library",
	  "onPremisesLastSyncDateTime": null,
	  "onPremisesSecurityIdentifier": null,
	  "onPremisesSyncEnabled": null,
	  "preferredDataLocation": "CAN",
	  "proxyAddresses": [
	      "SMTP:library7423@contoso.com"
	  ],
	  "renewedDateTime": "2018-12-22T00:51:37Z",
	  "resourceBehaviorOptions": [],
	  "resourceProvisioningOptions": [],
	  "securityEnabled": false,
	  "visibility": "Public",
	  "onPremisesProvisioningErrors": []
}
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/create_group-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/create_group-Javascript-snippets.md)]

---


#### Request 2
The second example request creates an Office 365 group with an owner and members specified.
<!-- {
  "blockType": "request",
  "name": "create_prepopulated_group"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups
Content-Type: application/json

{
  "description": "Group with designated owner and members",
  "displayName": "Operations group",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "operations2019",
  "securityEnabled": false,
  "owners@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/26be1845-4119-4801-a799-aea79d09f1a2"
  ],
  "members@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/ff7cb387-6688-423c-8188-3da9532a73cc",
    "https://graph.microsoft.com/v1.0/users/69456242-0067-49d3-ba96-9de6f2728e14"
  ]
}
```

#### Response 2
The following is an example of a successful response. It includes only default properties. You can subsequently get the **owners** or **members** navigation properties of the group to verify the owner or members. 
>**Note:** The response object shown here might be shortened for readability. All the default properties are returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_prepopulated_group"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
    "id": "502df398-d59c-469d-944f-34a50e60db3f",
    "deletedDateTime": null,
    "classification": null,
    "createdDateTime": "2018-12-27T22:17:07Z",
    "creationOptions": [],
    "description": "Group with designated owner and members",
    "displayName": "Operations group",
    "groupTypes": [
        "Unified"
    ],
    "mail": "operations2019@contoso.com",
    "mailEnabled": true,
    "mailNickname": "operations2019",
    "onPremisesLastSyncDateTime": null,
    "onPremisesSecurityIdentifier": null,
    "onPremisesSyncEnabled": null,
    "preferredDataLocation": "CAN",
    "proxyAddresses": [
        "SMTP:operations2019@contoso.com"
    ],
    "renewedDateTime": "2018-12-27T22:17:07Z",
    "resourceBehaviorOptions": [],
    "resourceProvisioningOptions": [],
    "securityEnabled": false,
    "visibility": "Public",
    "onPremisesProvisioningErrors": []
}
```
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/create_prepopulated_group-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/create_prepopulated_group-Javascript-snippets.md)]

---


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create group",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
