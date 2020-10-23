---
title: "educationSynchronizationProfileStatus resource type"
description: "Represents the synchronization status of a school data synchronization profile. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationProfileStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the synchronization status of a school data [synchronization profile](educationsynchronizationprofile.md).

> **Note:** Updates to the **educationSynchronizationProfileStatus** might be delayed due to the asynchronous nature of background sync processing.

## Methods

| Method                                                                      | Return Type                               | Description                                              |
| :-------------------------------------------------------------------------- | :---------------------------------------- | :------------------------------------------------------- |
| [Get status of a sync](../api/educationsynchronizationprofilestatus-get.md) | **educationSynchronizationProfileStatus** | Return the status of a specific synchronization profile. |

## Properties

| Property                    | Type                           | Description                                                                                                              |
| :-------------------------- | :----------------------------- | :----------------------------------------------------------------------------------------------------------------------- |
| id                          | String                         | The unique identifier for the resource. (read-only)                                                                      |
| status                      | educationSynchronizationStatus | The status of a sync. Possible values are: `paused`, `inProgress`, `success`, `error`, `quarantined`, `validationError`. |
| lastSynchronizationDateTime | DateTimeOffset                 | Represents the time when most recent changes have been observed in the directory.                                        |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSynchronizationProfileStatus"
}-->

```json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/synchronizationProfiles/{id}/profileStatus/$entity",
  "id": "String",
  "status": { "@odata.type": "microsoft.graph.educationSynchronizationStatus" },
  "lastSynchronizationDateTime": "DateTimeOffset"
}
```


