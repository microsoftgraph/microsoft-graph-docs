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
| status                      | educationSynchronizationStatus | The status of a sync. Possible values are: `paused`, `inProgress`, `success`, `error`, `quarantined`, `validationError`, `extracting`*, `validating`*. |
| lastSynchronizationDateTime | DateTimeOffset                 | Represents the time of the most recent successful  synchronization.                                        |
| lastActivityDateTime | DateTimeOffset                 | Represents the time when most recent changes were observed in profile.                                        |
| errorCount | Int                 | Number of errors during synchronization.                                        |
| statusMessage | String                 | Status message for the current profile's synchronization stage.                                        |

"Extracting" and "Validating" statuses are only returned for applications prepared to handle new enum members. Opt-in is done by setting HTTP prefer request header: `Prefer: include-unknown-enum-members`. See more about: [evolvable enums](/graph/best-practices-concept#evolvable-enums).


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
  "lastSynchronizationDateTime": "DateTimeOffset",
  "lastActivityDateTime": "DateTimeOffset",
  "errorCount": "Int",
  "statusMessage": "String"
}
```
