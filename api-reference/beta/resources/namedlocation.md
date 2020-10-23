---
title: "namedLocation resource type"
description: "This is the base class that represents an Azure Active Directory named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# namedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is the base class that represents an Azure Active Directory named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List namedLocations](../api/conditionalaccessroot-list-namedlocations.md) | [namedLocation](namedLocation.md) collection | Get all the **namedLocation** objects in the organization. |
| [Get namedLocation](../api/namedlocation-get.md) | [namedLocation](namedlocation.md) | Read the properties and relationships of a **namedLocation** object. |
| [Delete namedLocation](../api/namedlocation-delete.md) | None | Delete a **namedLocation** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The Timestamp type represents creation date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|displayName|String|Human-readable name of the location.|
|id|String|Identifier of a namedLocation object. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents last modified date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.namedLocation",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "modifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "namedLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


