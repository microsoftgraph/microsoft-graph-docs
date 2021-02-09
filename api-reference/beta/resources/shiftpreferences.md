---
title: "shiftPreferences resource type"
description: "Represents a user's availability to be assigned shifts in the schedule."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# shiftPreferences resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's availability to be assigned shifts in the [schedule](schedule.md).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get](../api/shiftpreferences-get.md) | [shiftPreferences](shiftpreferences.md) | Read the properties and relationships of a **shiftPreferences** object. |
| [Update](../api/shiftpreferences-put.md) | [shiftPreferences](shiftpreferences.md) | Update a **shiftPreferences** object. |

## Properties

|Property          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id | `Edm.String` | The identifier of the entity. |
| @odata.etag | `Edm.String` | The change key for the entity. |
| availability | [shiftAvailability](shiftavailability.md) collection | Availability of the user to be scheduled for work and its recurrence pattern. |
| createdDateTime | `Edm.DateTimeOffset` | Timestamp corresponding to when the entity was created. |
| lastModifiedDateTime | `Edm.DateTimeOffset` | Timestamp corresponding to when the entity was last modified. |
| lastModifiedBy | [identitySet](identityset.md) | Identity of the person who last modified the entity. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.shiftPreferences",
  "baseType": "microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "availability": [{"@odata.type": "microsoft.graph.shiftAvailability"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "shiftPreferences resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


