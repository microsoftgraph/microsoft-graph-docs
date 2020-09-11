---
title: "accessPackageResource resource type"
description: "An access package resource is a reference to a resource associated with a catalog the roles for which can be used in one or more access packages."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package resource is a reference to a resource associated with an access package catalog, the roles for which can be used in one or more access packages.  To request to associate a resource with an access package catalog, create an [accessPackageResourceRequest](accesspackageresourcerequest.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageCatalog resources](../api/accesspackagecatalog-list-accesspackageresources.md) | [accessPackageResource](accesspackageresource.md) collection | Retrieve a list of accessPackageResource objects in a catalog. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|addedBy|String|Read-only.|
|addedOn|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|description|String|A description for the resource.|
|displayName|String|The display name of the resource, such as the application name, group name or site name.|
|id|String| Read-only.|
|isPendingOnboarding|Boolean|True if the resource is not yet available for assignment.|
|originId|String|The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group. |
|originSystem|String|The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`.|
|resourceType|String|The type of the resource, such as `Application` if it is an Azure AD connected application, or `SharePoint Online Site` for a SharePoint Online site.|
|url|String|A unique resource locator for the resource, such as the URL for signing a user into an application.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageResourceRoles|[accessPackageResourceRole](accesspackageresourcerole.md) collection| Read-only. Nullable.|
|accessPackageResourceScopes|[accessPackageResourceScope](accesspackageresourcescope.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageResource",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "addedBy": "String",
  "addedOn": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "isPendingOnboarding": true,
  "originId": "String",
  "originSystem": "String",
  "resourceType": "String",
  "url": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
