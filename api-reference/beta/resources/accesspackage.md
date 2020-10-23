---
title: "accessPackage resource type"
description: "An access package defines the collections of resource roles and the policies for how one or more users can get access to those resources."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackage resource type

Namespace: microsoft.graph



In [Azure AD entitlement management](entitlementmanagement-root.md), an access package defines the collections of resource roles and the policies for how one or more users can get access to those resources.  
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

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|catalogId|String|ID of the access package catalog referencing this access package. Read-only.|
|createdBy|String|UPN of the user or identity of the subject who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|description|String|The description of the access package.|
|displayName|String|The display name of the access package.|
|id|String| Read-only.|
|isHidden|Boolean|Whether the access package is hidden from the requestor.|
|isRoleScopesVisible|Boolean|Indicates whether role scopes are visible.|
|modifiedBy|String|The UPN of the user who last modified this resource. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageAssignmentPolicies|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md) collection| Read-only. Nullable.|
|accessPackageCatalog|[accessPackageCatalog](accesspackagecatalog.md)| Read-only. Nullable.|
|accessPackageResourceRoleScopes|[accessPackageResourceRoleScope](accesspackageresourcerolescope.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackage",
  "baseType": "",
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


