---
title: "Create group"
description: "Create a new group as specified in the request body. "
author: "Jordanndahl"
localization_priority: Priority
ms.prod: "groups"
doc_type: apiPageType
---

# Create group

Namespace: microsoft.graph

Create a new group as specified in the request body. You can create the following types of groups:

* Microsoft 365 group (unified group)
* Security group

This operation returns by default only a subset of the properties for each group. These default properties are noted in the [Properties](../resources/group.md#properties) section.

To get properties that are _not_ returned by default, do a [GET operation](group-get.md) and specify the properties in a `$select` OData query option.

> **Note**: Although Microsoft Teams is built on Microsoft 365 groups, you can't currently create a team via this API. You can use the other group APIs to manage a team that has been created in the Microsoft Teams UI.

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
| Content-Type  | application/json  |

## Request body
The following table shows the properties of the [group](../resources/group.md) resource to specify when you create a group. 

| Property | Type | Description|
|:---------------|:--------|:----------|
| displayName | string | The name to display in the address book for the group. Maximum length: 256 characters. Required. |
| description | string | A description for the group. Max. length: 1024 characters. Optional. |
| isAssignableToRole | Boolean | Set to **true** to enable the group to be assigned to an Azure AD role. Only Privileged Role Administrator and Global Administrator can set the value of this property. Optional. |
| mailEnabled | boolean | Set to **true** for mail-enabled groups. Required. |
| mailNickname | string | The mail alias for the group. Max. length: 64 characters. These characters cannot be used in the mailNickName: `@()\[]";:.<>,SPACE`. Required. |
| securityEnabled | boolean | Set to **true** for security-enabled groups, including Microsoft 365 groups. Required. |
| owners | string collection | This property represents the owners for the group at creation time.  Owners aren't automatically added as group members unless specified in the **members** property. Optional. |
| members | string collection | This property represents the members for the group at creation time. Optional. |
|visibility|String|Specifies the visibility of a Microsoft 365 group. Possible values are: `Private`, `Public`, `HiddenMembership`, or empty (which is interpreted as `Public`).|

> **Note:** Groups created using the Microsoft Azure portal always have **securityEnabled** initially set to `true`.

Specify other writable properties as necessary for your group. For more information, see the properties of the [group](../resources/group.md) resource.

>**Note:** Creating a group using the Group.Create application permission without specifying owners will create the group anonymously and the group will not be modifiable. You can use the `POST` operation and add owners to the group while creating it to specify owners who can modify the group.

> Creating a Microsoft 365 group programmatically with an app-only context and without specifying owners will create the group anonymously. Doing so can result in the associated SharePoint Online site not being created automatically until further manual action is taken.  


### groupTypes options

Use the **groupTypes** property to control the type of group and its membership, as shown.

| Type of group | Assigned membership | Dynamic membership |
|:--------------|:------------------------|:---------------|
| Microsoft 365 (aka unified group)| `["Unified"]` | `["Unified","DynamicMembership"]`
| Dynamic | `[]` (_null_) | `["DynamicMembership"]`|

## Response
If successful, this method returns a `201 Created` response code and a [group](../resources/group.md) object in the response body. The response includes only the default properties of the group.

## Examples

### Example 1: Create a Microsoft 365 group

The following example creates a Microsoft 365 group.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_group"
}-->
``` http
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
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-group-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
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

### Example 2: Create a group with owners and members

The following example creates a Security group with an owner and members specified. Note that a maximum of 20 relationships, such as owners and members, can be added as part of group creation. You can subsequently add more members by using the [add member](group-post-members.md) API or JSON batching.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_prepopulated_group"
}-->
``` http
POST https://graph.microsoft.com/v1.0/groups
Content-Type: application/json

{
  "description": "Group with designated owner and members",
  "displayName": "Operations group",
  "groupTypes": [
  ],
  "mailEnabled": false,
  "mailNickname": "operations2019",
  "securityEnabled": true,
  "owners@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/26be1845-4119-4801-a799-aea79d09f1a2"
  ],
  "members@odata.bind": [
    "https://graph.microsoft.com/v1.0/users/ff7cb387-6688-423c-8188-3da9532a73cc",
    "https://graph.microsoft.com/v1.0/users/69456242-0067-49d3-ba96-9de6f2728e14"
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

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-prepopulated-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of a successful response. It includes only default properties. You can subsequently get the **owners** or **members** navigation properties of the group to verify the owner or members. 

>**Note:** The response object shown here might be shortened for readability.

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

### Example 3: Create a group that can be assigned to an Azure AD role

#### Request

The following is an example of the request. The calling user must be assigned the *Directory.AccessAsUser.All* permission to set the **isAssignableToRole** property.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_role_enabled_group"
}-->
``` http
POST https://graph.microsoft.com/v1.0/groups
Content-Type: application/json

{
  "description": "Group assignable to a role",
  "displayName": "Role assignable group",
  "groupTypes": [
    "Unified"
  ],
  "isAssignableToRole": true,
  "mailEnabled": true,
  "securityEnabled": true,
  "mailNickname": "contosohelpdeskadministrators",
  "visibility" : "Private"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-role-enabled-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-role-enabled-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-role-enabled-group-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-role-enabled-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


> **Note:** The **visibility** and **groupTypes** properties are not required for creation, but are auto-populated with these values. A group with **isAssignableToRole** property set to `true` cannot be of dynamic membership type and cannot have an owner. For more information, see [Using a group to manage Azure AD role assignments](https://go.microsoft.com/fwlink/?linkid=2103037).

#### Response

The following is an example of the response. It includes only default properties.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.group",
  "name": "create_role_enabled_group"
} -->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups/$entity",
  "id": "502df398-d59c-469d-944f-34a50e60db3f",
  "deletedDateTime": null,
  "classification": null,
  "createdDateTime": "2018-12-27T22:17:07Z",
  "description": "Group assignable to a role",
  "displayName": "Role assignable group",
  "expirationDateTime": null,
  "groupTypes": [
    "Unified"
  ],
  "isAssignableToRole": true,
  "mail": "operations2019@contoso.com",
  "mailEnabled": true,
  "mailNickname": "contosohelpdeskadministrators",
  "membershipRule": null,
  "membershipRuleProcessingState": null,
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
  "securityEnabled": true,
  "securityIdentifier": "S-1-12-1-1905728287-1207447622-870010782-555555555",
  "theme": null,
  "visibility": "Private",
  "onPremisesProvisioningErrors": []
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create group",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
} -->

