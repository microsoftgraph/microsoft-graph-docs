---
title: "Create group"
description: "Use this API to create a new group as specified in the request body. You can create one of three types of groups:"
author: "dkershaw10"
localization_priority: Priority
ms.prod: "groups"
---

# Create group

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use this API to create a new [group](../resources/group.md) as specified in the request body. You can create one of three types of groups:

* Office 365 Group (unified group)
* Dynamic group
* Security group

This operation returns by default only a subset of the properties for each group. These default properties are noted in the [Properties](../resources/group.md#properties) section.

To get properties that are _not_ returned by default, do a GET operation and specify the properties in a `$select` OData query option. See an [example](group-get.md#request-2).

> **Note**: To create a [team](../resources/team.md), first create a group then add a team to it, see [create team](../api/team-put-teams.md).

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

## Request body
The following table shows the properties of the [group](../resources/group.md) resource to specify when you create a group. 

| Property | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. Required. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. Set this to **true** if creating an Office 365 Group. Set this to **false** if creating dynamic or security group. Required. |
| mailNickname | string | The mail alias for the group. Required. |
| securityEnabled | boolean | Set to **true** for security-enabled groups. Set this to **true** if creating a dynamic or security group. Set this to **false** if creating an Office 365 Group. Required. |
| owners | string collection | This property represents the owners for the group at creation time. Optional. |
| members | string collection | This property represents the members for the group at creation time. Optional. |

Specify the **groupTypes** property if you're creating an Office 365 or dynamic group, as stated below.

| Type of group | **groupTypes** property |
|:--------------|:------------------------|
| Office 365 (aka unified group)| "Unified" |
| Dynamic | "DynamicMembership" |
| Security | Do not set. |

Since the **group** resource supports [extensions](/graph/extensibility-overview), you can use the `POST` operation and add custom properties with your own data to the group while creating it.

>**Note:** Creating an Office 365 Group programmatically without a user context and  without specifying owners will create the group anonymously.  Doing so can result in the associated SharePoint Online site not being created automatically until further manual action is taken.  

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

#### Response
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

#### Response 2
The following is an example of a successful response. It includes only default properties. You can subsequently get the **owners** or **members** navigation properties of the group to verify the owner or members. 
>**Note:** The response object shown here might be shortened for readability. All the default properties are returned from an actual call.
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
#### Sample Code
# [C#](#tab/CS)
[!INCLUDE [Sample Code]( ../includes/create_prepopulated_group-C#-snippets.md)]

# [Javascript](#tab/Javascript)
[!INCLUDE [Sample Code]( ../includes/create_prepopulated_group-Javascript-snippets.md)]

---


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
    "Error: /api-reference/beta/api/group-post-groups.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
