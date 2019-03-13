---
title: "synchronizationProgress resource type"
description: "Represents the progress of a synchronizationJob toward completion."
localization_priority: Normal
doc_type: resourcePageType
---

# synchronizationProgress resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the progress of a [synchronizationJob](synchronization-synchronizationjob.md) toward completion.

## Properties

| Property                              | Type      | Description    |
|:--------------------------------------|:----------|:---------------|
|completedUnits|Int32|The numerator of a progress ratio; the number of units of changes already processed.|
|progressObservationDateTime|DateTimeOffset|The time of a progress observation as an offset in minutes from UTC.|
|totalUnits|Int32|The denominator of a progress ratio; a number of units of changes to be processed to accomplish synchronization.|
|units|String|An optional description of the units.|

<!-- The troubleshootingUrl property is missing a description -->

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationStatus"
}-->

```json
{
  "completedUnits": 1025,
  "progressObservationDateTime": "2017-10-10T17:00:00Z",
  "totalUnits": 3024,
  "units": "pages"
}

```

<!-- uuid: 15571993-7e2f-4842-84d5-01ceb67cdc05
20185-08-14 22:30:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationProcess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/synchronization-synchronizationprogress.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
