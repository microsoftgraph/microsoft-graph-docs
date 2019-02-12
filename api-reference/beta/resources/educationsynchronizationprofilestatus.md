---
title: "educationSynchronizationProfileStatus resource type"
description: "Represents the synchronization status of a school data synchronization profile. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
---

# educationSynchronizationProfileStatus resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the synchronization status of a school data [synchronization profile](educationsynchronizationprofile.md). 

> **Note:** Updates to the **educationSynchronizationProfileStatus** might be delayed due to the asynchronous nature of background sync processing.

## Methods

| Method | Return Type | Description |
|:-|:-|:-|
| [Get status of a sync](../api/educationsynchronizationprofilestatus-get.md) | **educationSynchronizationProfileStatus** | Return the status of a specific synchronization profile. |

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **status** | educationSynchronizationStatus | The status of a sync. Possible values are: `paused`, `inProgress`, `success`, `error`, `quarantined`, `validationError`. |
| **lastSynchronizationDateTime** | DateTimeOffset | Represents the time when most recent changes have been observed in the directory.  |

## JSON representation
<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSynchronizationProfileStatus"
}-->

```json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/synchronizationProfiles('{id}')/profileStatus/$entity",
    "status": {"@odata.type":"microsoft.graph.educationSynchronizationStatus"},
    "lastSynchronizationDateTime": "DateTimeOffset"
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/educationsynchronizationprofilestatus.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
