---
title: "educationSynchronizationCustomization resource type"
description: "Provides settings for customizing the school data profile synchronization of the resource entities. The customization can be applied to all the entities being synchronized. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationCustomization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides settings for customizing the school data profile synchronization of the resource entities. The customization can be applied to all the entities being synchronized.

## Properties

| Property                 | Type              | Description                                                                                                                                                                                                            |
| :----------------------- | :---------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| optionalPropertiesToSync | String collection | The collection of property names to sync. If set to null, all properties will be synchronized. **Does not apply to Student Enrollments or Teacher Rosters**                                                            |
| synchronizationStartDate | DateTime          | The date that the synchronization should start. This value should be set to a future date. If set to null, the resource will be synchronized when the profile setup completes. **Only applies to Student Enrollments** |
| isSyncDeferred           | Boolean           | Indicates whether synchronization of the parent entity is deferred to a later date.                                                                                                                                    |
| allowDisplayNameUpdate   | Boolean           | Indicates whether the display name of the resource can be overwritten by the sync.                                                                                                                                     |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSynchronizationCustomization"
}-->

```json
{
  "optionalPropertiesToSync": ["String"],
  "synchronizationStartDate": "DateTimeOffset",
  "isSyncDeferred": "Boolean",
  "allowDisplayNameUpdate": "Boolean"
}
```


