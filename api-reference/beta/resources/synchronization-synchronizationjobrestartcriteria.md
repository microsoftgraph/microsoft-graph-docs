---
title: "synchronizationJobRestartCriteria resource type"
description: "Defines the scope of the [synchronizationJob: restart](../api/synchronization_synchronizationjob_restart.md) action."
localization_priority: Normal
---

# synchronizationJobRestartCriteria resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the scope of the [synchronizationJob: restart](../api/synchronization-synchronizationjob-restart.md) action.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|resetScope|String| Comma-separated combination of the following values: `Full`, `QuarantineState`, `Watermark`, `Escrows`, `ConnectorDataStore`. Use `Full` if you want all of the options.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationJobRestartCriteria"
}-->

```json
{
  "resetScope": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationJobRestartCriteria resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/synchronization-synchronizationjobrestartcriteria.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
