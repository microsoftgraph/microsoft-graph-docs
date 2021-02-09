---
title: "directoryObject resource type"
description: "Represents an Azure Active Directory object. The **directoryObject** type is the base type for many other directory entity types."
localization_priority: Priority
author: "keylimesoda"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# directoryObject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure Active Directory object. The **directoryObject** type is the base type for many other directory entity types.

This resource supports:

- Using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/directoryobject-delta.md) function.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get directoryObject](../api/directoryobject-get.md) | [directoryObject](directoryobject.md) |Read the properties  of a directory object.|
|[Delete](../api/directoryobject-delete.md) | None |Delete a directory object. |
|[checkMemberGroups](../api/directoryobject-checkmembergroups.md)|String collection|Check for membership in a list of groups. The check is transitive.|
|[getMemberGroups](../api/directoryobject-getmembergroups.md)|String collection|Return all the groups that the user, group, or directory object is a member of. The check is transitive.|
|[getMemberObjects](../api/directoryobject-getmemberobjects.md)|String collection| Return all of the groups and directory roles that the user, group, or directory object is a member of. The check is transitive. |
|[getByIds](../api/directoryobject-getbyids.md) | [directoryObject](directoryobject.md) collection | Get a set of directory objects based on a set of supplied ids. |
|[validateProperties](../api/directoryobject-validateproperties.md)|Json| Validate a Microsoft 365 group's display name or mail nickname complies with naming policies. |
|[delta](../api/directoryobject-delta.md)|[directoryObject](directoryobject.md) collection| Get incremental changes for directory objects. Supports filtering by derrived type. |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String|The unique identifier for the object. For example, 12345678-9abc-def0-1234-56789abcde. The value of the **id** property is often but not exclusively in the form of a GUID; treat it as an opaque identifier and do not rely on it being a GUID. Key. Not nullable. Read-only.|

## Relationships

None

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.directoryObject",
  "openType": true
}-->

```json
{
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "directoryObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


