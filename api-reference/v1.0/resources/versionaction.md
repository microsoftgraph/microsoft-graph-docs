---
author: daspek
ms.author: dspektor
title: versionAction resource type
description: The VersionAction object provides information about an activity that resulted in a new item version.
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
---
# versionAction resource type

Namespace: microsoft.graph

The presence of the **versionAction** resource on an [**itemActivity**][activity] indicates that the activity caused a new version to be created.

>**Note:** Item activity records are currently only available on SharePoint and OneDrive for Business.

[activity]: itemactivity.md

## Properties

| Property name | Type   | Description
|:--------------|:-------|:----------------------------------------------------
| newVersion    | string | The name of the new version that was created by this action.

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

<!--
{
  "type": "#page.annotation",
  "description": "The VersionAction object provides information about an activity that resulted in a new item version.",
  "keywords": "activities,activity,action,version",
  "section": "documentation",
  "tocPath": "Resources/VersionAction",
  "suppressions": []
}
-->

