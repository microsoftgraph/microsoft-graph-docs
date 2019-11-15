---
title: "Create group"
description: "Create a new Office 365 group or security group."
author: "dkershaw10"
localization_priority: Priority
ms.prod: "groups"
doc_type: apiPageType
---

# Create group

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [group](../resources/group.md) as specified in the request body. You can create one of the following groups:

* Office 365 group (unified group)
* Security group

This operation returns by default only a subset of the properties for each group. These default properties are noted in the [Properties](../resources/group.md#properties) section. To get properties that are _not_ returned by default, do a [GET operation](group-get.md) and specify the properties in a `$select` OData query option.

>**Note**: To create a [team](../resources/team.md), first create a group then add a team to it, see [create team](../api/team-put-teams.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All, Directory.ReadWrite.All, Directory.AccessAsUser.All  |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.Create, Group.ReadWrite.All, Directory.ReadWrite.All |

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

The following table shows the properties of the [group](../resources/group.md) resource to specify when you create a group. 

| Property | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. Required. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. Required. |
| mailNickname | string | The mail alias for the group. Required. |
| securityEnabled | boolean | Set to **true** for security-enabled groups, including Office 365 groups. Required. |
| owners | [directoryObject](../resources/directoryobject.md) collection | This property represents the owners for the group at creation time. Optional. |
| members | [directoryObject](../resources/directoryobject.md) collection | This property represents the members for the group at creation time. Optional. |

> **Note:** Groups created using the Microsoft Azure portal always have **securityEnabled** initially set to `true`.

Because the **group** resource supports [extensions](/graph/extensibility-overview), you can use the `POST` operation and add custom properties with your own data to the group while creating it.

>**Note:** Creating a group using the Group.Create application permission without specifying owners will create the group anonymously and the group will not be modifiable. You can use the `POST` operation and add owners to the group while creating it to specify owners who can modify the group.

> Creating an Office 365 group programmatically with an app-only context and without specifying owners will create the group anonymously. Doing so can result in the associated SharePoint Online site not being created automatically until further manual action is taken.  

Specify other writable properties as necessary for your group. For more information, see the properties of the [group](../resources/group.md) resource.

### groupTypes options

Use the **groupTypes** property to control the type of group and its membership, as shown.

| Type of group | Assigned membership | Dynamic membership |
|:--------------|:------------------------|:---------------|
| Office 365 (aka unified group)| `["Unified"]` | `["Unified","DynamicMembership"]`
| Dynamic | `[]` (_null_) | `["DynamicMembership"]`|

## Response

If successful, this method returns a `201 Created` response code and a [group](../resources/group.md) object in the response body. The response includes only the default properties of the group.

## Examples

### Example 1: Create an Office 365 group

The following example creates an Office 365 group.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_group"
}-->
``` http
POST https://graph.microsoft.com/beta/groups
Content-type: application/json
Content-length: 244

{
  "description": "Self help community for golf",
  "displayName": "Golf Assist",
  "groupTypes": [
    "Unified"
  ],
  "mailEnabled": true,
  "mailNickname": "golfassist",
  "securityEnabled": false
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-group-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability. All the default properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_group"
} -->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
	 "id": "45b7d2e7-b882-4a80-ba97-10b7a63b8fa4",
	 "deletedDateTime": null,
	 "classification": null,
	 "createdDateTime": "2018-12-22T02:21:05Z",
	 "description": "Self help community for golf",
	 "displayName": "Golf Assist",
	 "expirationDateTime": null,
	 "groupTypes": [
	     "Unified"
	 ],
	 "mail": "golfassist@contoso.com",
	 "mailEnabled": true,
	 "mailNickname": "golfassist",
	 "membershipRule": null,
	 "membershipRuleProcessingState": null,
	 "onPremisesLastSyncDateTime": null,
	 "onPremisesSecurityIdentifier": null,
	 "onPremisesSyncEnabled": null,
	 "preferredDataLocation": "CAN",
	 "preferredLanguage": null,
	 "proxyAddresses": [
	     "SMTP:golfassist@contoso.onmicrosoft.com"
	 ],
	 "renewedDateTime": "2018-12-22T02:21:05Z",
	 "resourceBehaviorOptions": [],
	 "resourceProvisioningOptions": [],
	 "securityEnabled": false,
	 "theme": null,
	 "visibility": "Public",
	 "onPremisesProvisioningErrors": []
}
```

### Example 2: Create an Office 365 group with an owner and members

The following example creates an Office 365 group with an owner and members specified.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_prepopulated_group"
}-->
``` http
POST https://graph.microsoft.com/beta/groups
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
    "https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2"
  ],
  "members@odata.bind": [
    "https://graph.microsoft.com/beta/users/ff7cb387-6688-423c-8188-3da9532a73cc",
    "https://graph.microsoft.com/beta/users/69456242-0067-49d3-ba96-9de6f2728e14"
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-prepopulated-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-prepopulated-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-prepopulated-group-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response 

The following is an example of a successful response. It includes only default properties. You can subsequently get the **owners** or **members** navigation properties of the group to verify the owner or members. 

>**Note:** The response object shown here might be shortened for readability. All the default properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_prepopulated_group"
} -->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#groups/$entity",
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

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions (preview)](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions (preview)](/graph/extensibility-schema-groups)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create group",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
