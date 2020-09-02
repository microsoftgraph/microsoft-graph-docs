---
title: "accessPackageAssignmentResourceRole resource type"
description: "An access package assignment resource role indicates the resource-specific role which a subject has been assigned through an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageAssignmentResourceRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment resource role indicates the resource-specific role which a subject has been assigned through an access package assignment.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get accessPackageAssignmentResourceRole](../api/accesspackageassignmentresourcerole-get.md) | [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md)  | Retrieve an accessPackageAssignmentResourceRole object. |
| [List accessPackageAssignmentResourceRoles](../api/accesspackageassignmentresourcerole-list.md) | [accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md) collection | Retrieve a list of accessPackageAssignmentResourceRole objects. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|originId|String|A unique identifier relative to the origin system, corresponding to the originId property of the [accessPackageResourceRole](accesspackageresourcerole.md). |
|originSystem|String|The system where the role assignment is to be created or has been created for an access package assignment, such as `SharePointOnline`, `AadGroup` or `AadApplication`, corresponding to the originSystem property of the [accessPackageResourceRole](accesspackageresourcerole.md).|
|status|String|The value is `PendingFulfillment` when the access package assignment has not yet been delivered to the origin system, and `Fulfilled` when the access package assignment has been delivered to the origin system.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageAssignments|[accessPackageAssignment](accesspackageassignment.md) collection| The access package assignments resulting in this role assignment. Read-only. Nullable.|
|accessPackageResourceRole|[accessPackageResourceRole](accesspackageresourcerole.md)| Read-only. Nullable.|
|accessPackageResourceScope|[accessPackageResourceScope](accesspackageresourcescope.md)| Read-only. Nullable.|
|accessPackageSubject|[accessPackageSubject](accesspackagesubject.md)| Read-only. Nullable.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignmentResourceRole",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "originId": "String",
  "originSystem": "String",
  "status": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentResourceRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
