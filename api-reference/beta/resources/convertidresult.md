---
title: "convertIdResult resource type"
description: "The result of an ID format conversion performed by the translateExchangeIds function."
localization_priority: Normal
doc_type: resourcePageType
---

# convertIdResult resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The result of an ID format conversion performed by the [translateExchangeIds](../api/user-translateexchangeids.md) function.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| sourceId | String | The identifier that was converted. This value is the original, un-converted identifier. |
| targetId | String | The converted identifier. This value is not present if the conversion failed. |
| errorDetails | [genericError](genericerror.md) | An error object indicating the reason for the conversion failure. This value is not present if the conversion succeeded. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "targetId",
    "errorDetails"
  ],
  "@odata.type": "microsoft.graph.convertIdResult"
}-->

```json
{
  "sourceId": "String",
  "targetId": "String",
  "errorDetails": {
    "@odata.type": "microsoft.graph.genericError"
  }
}
```
<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/convertidresult.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
