---
author: psampath
ms.author: psampath
ms.date: 06/20/2018
title: StoragePlanInformation
localization_priority: Normal
doc_type: resourcePageType
---
# storagePlanInformation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **storagePlanInformation** resource provides information about the drive's storage quota plans.

### JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
   "@odata.type": "microsoft.graph.storagePlanInformation",
} -->

```json
{
  "upgradeAvailable": true
}

```
## Properties

| Property name     | Type      | Description                                                             |
|:------------------|:----------|:----------------------------------------------------------------------- |
| upgradeAvailable  | Boolean   | Indicates if there are higher storage quota plans available. Read-only. |


<!--
{
  "type": "#page.annotation",
  "description": "storagePlanInformation resource contains information about storage quota plans that make up the drive's storage space quota.",
  "keywords": "quota,plans,upgradeAvailable",
  "section": "documentation",
  "tocPath": "Resources/StoragePlanInformation",
  "suppressions": [
    "Error: /api-reference/beta/resources/storageplaninformation.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->

