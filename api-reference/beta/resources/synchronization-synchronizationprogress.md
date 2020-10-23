---
title: "synchronizationProgress resource type"
description: "Represents the progress of a synchronizationJob toward completion."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# synchronizationProgress resource type

Namespace: microsoft.graph

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
  "@odata.type": "microsoft.graph.synchronizationProgress"
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
  "suppressions": []
}
-->


