---
author: daspek
ms.author: dspektor
ms.date: 09/14/2017
title: VersionAction
localization_priority: Normal
---
# VersionAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The presence of the **VersionAction** resource on an [**itemActivity**][activity] indicates that the activity caused a new version to be created.

[activity]: itemactivity.md

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@type": "microsoft.graph.versionAction"
}-->

```json
{
  "newVersion": "string"
}
```

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| newVersion    | string | The name of the new version that was created by this action.

## Remarks

Item activity records are currently only available on SharePoint and OneDrive for Business.

<!--
{
  "type": "#page.annotation",
  "description": "The VersionAction object provides information about an activity that resulted in a new item version.",
  "keywords": "activities,activity,action,version",
  "section": "documentation",
  "tocPath": "Resources/VersionAction",
  "suppressions": [
    "Error: /api-reference/beta/resources/versionaction.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
