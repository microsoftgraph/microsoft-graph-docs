---
title: "roomList resource type"
description: "Represents a group of rooms created by the company."
localization_priority: Normal
author: "vrod9429"
ms.prod: "outlook"
doc_type: "resourcePageType"
---

# roomList resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of [room](room.md) objects defined in the tenant.

Derived from [place](place.md).

## Methods

| Method                              | Return Type                  | Description |
|:------------------------------------|:-----------------------------|:--------|
| [List places](../api/place-list.md) | A collection of the requested, derived type of [place](place.md) | Get a collection of the specified type of **place** object defined in the tenant. For example, you can get all the rooms, all the room lists, or the rooms in a specific room list in the tenant.|
| [Get place](../api/place-get.md)    | The requested, derived type of [place](place.md)            | Get the properties and relationships of the specified **place** object, such as a room list. |

## Properties

| Property       | Type                                              | Description |
|:---------------|:--------------------------------------------------|:--------|
| address        | [physicalAddress](physicaladdress.md)             | The street address of the room list. |
| displayName    | String                                            | The name associated with the room list. |
| emailAddress   | String                                            | The email address of the room list. |
| geoCoordinates | [outlookGeoCoordinates](outlookgeocoordinates.md) | Specifies the roomlist location in latitude, longitude and (optionally) altitude coordinates. |
| id             | String                                            | Unique identifier for the room list. Read-only. |
| phone          | String                                            | The phone number of the room list. |

## Relationships

| Relationship | Type                         | Description          |
|:-------------|:-----------------------------|:---------------------|
| rooms        | [place](place.md) collection | Read-only. Nullable. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.roomList"
}-->

```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "displayName": "String",
  "emailAddress": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},
  "id": "String (identifier)",
  "phone": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "roomList resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

