---
title: "accessPackage resource type"
description: "An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-root.md), an access package defines the collections of resource roles and the policies for how one or more users can get access to those resources.  

Each access package is referenced by a single access package catalog, and has links to the resources from that catalog via the resource-specific role scopes that define the access the package provides.  An access package also links to the access package assignment policies, each of which define who can request or be assigned an access package assignment.

To assign a user to an access package, [create an accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-post.md) that references the access package and access package assignment policy.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackages](../api/accesspackage-list.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of **accesspackage** objects. |
| [Create accessPackage](../api/accesspackage-post.md) | [accessPackage](accesspackage.md) | Create a new **accesspackage** object. |
| [Get accessPackage](../api/accesspackage-get.md) | [accessPackage](accesspackage.md) | Read properties and relationships of an **accesspackage** object. |
| [Update accessPackage](../api/accesspackage-update.md)|None | Update the properties of an **accesspackage** object. |
| [Delete accessPackage](../api/accesspackage-delete.md) |None | Delete an **accesspackage**. |
| [List accessPackageResourceRoleScopes](../api/accesspackage-list-accesspackageresourcerolescopes.md) | [accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection | Retrieve a list of **accessPackageResourceRoleScope** objects for this access package. |
| [Create accessPackageResourceRoleScope](../api/accesspackage-post-accesspackageresourcerolescopes.md) |None | Create a new **accessPackageResourceRoleScope** object for this access package. |
| [List incompatibleAccessPackages](../api/accesspackage-list-incompatibleaccesspackages.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of the incompatible **accesspackage** objects for this access package. |
| [Add accessPackage to incompatibleAccessPackages](../api/accesspackage-post-incompatibleaccesspackage.md) | None | Add a link to indicate another **accesspackage** is incompatible with a specified access package. |
| [Remove accessPackage from incompatibleAccessPackages](../api/accesspackage-delete-incompatibleaccesspackage.md) | None | Remove a link that indicated an **accesspackage** was incompatible. |
| [List incompatibleGroups](../api/accesspackage-list-incompatiblegroups.md) | [group](group.md) collection | Retrieve a list of the incompatible **group** objects for this access package. |
| [Add group to incompatibleGroups](../api/accesspackage-post-incompatiblegroup.md) | None | Add a link to indicate membership of a **group** is incompatible with a specified access package. |
| [Remove group from incompatibleGroups](../api/accesspackage-delete-incompatiblegroup.md) | None | Remove a link that indicated a **group** membership was incompatible.|
| [List accessPackagesIncompatibleWith](../api/accesspackage-list-accesspackagesincompatiblewith.md) | [accessPackage](accesspackage.md) collection | Retrieve a list of the  **accesspackage** objects which list this access package as incompatible. |
|[filterByCurrentUser](../api/accesspackage-filterbycurrentuser.md)|[accessPackage](../resources/accesspackage.md) collection|Retrieve the list of **accessPackage** objects filtered on the signed-in user.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|catalogId|String|ID of the access package catalog referencing this access package. Read-only.|
|createdBy|String|UPN of the user or identity of the subject who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the access package.|
|displayName|String|The display name of the access package.|
|id|String| Read-only.|
|isHidden|Boolean|Whether the access package is hidden from the requestor.|
|isRoleScopesVisible|Boolean|Indicates whether role scopes are visible.|
|modifiedBy|String|The UPN of the user who last modified this resource. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageAssignmentPolicies|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection| Read-only. Nullable.|
|accessPackageCatalog|[accessPackageCatalog](accesspackagecatalog.md)| Read-only. Nullable.|
|accessPackageResourceRoleScopes|[accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection| Nullable.|
| incompatibleAccessPackages | [accessPackage](accesspackagecatalog.md) collection | The  access packages whose assigned users are ineligible to be assigned this access package. |
| accessPackagesIncompatibleWith | [accessPackage](accesspackagecatalog.md) collection | The access packages that are incompatible with this package. Read-only. |
| incompatibleGroups | [group](group.md) collection | The groups whose members are ineligible to be assigned this access package. |


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackage",
  "keyProperty": "id"
}-->

```json
{
    "id":"360fa7de-90be-48dc-a2ce-fc40094a93dd",
    "description":"Sample access package",
    "displayName":"Access package for testing",
    "isHidden":false,
    "catalogId":"662d99e7-6ceb-4c21-9cb4-9b0bbfdefccc",
    "isRoleScopesVisible":false,
    "createdDateTime":"2019-01-27T18:19:50.74Z",
    "modifiedDateTime":"2019-01-27T18:19:50.74Z",
    "createdBy":"TestGA@example.com",
    "modifiedBy":"TestGA@example.com"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackage resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


