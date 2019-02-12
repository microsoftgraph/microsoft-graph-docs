---
title: "iosBookmark resource type"
description: "iOS URL bookmark"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# iosBookmark resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

iOS URL bookmark

## Properties
|Property|Type|Description|
|:---|:---|:---|
|url|String|URL allowed to access|
|bookmarkFolder|String|The folder into which the bookmark should be added in Safari|
|displayName|String|The display name of the bookmark|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosBookmark"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosBookmark",
  "url": "String",
  "bookmarkFolder": "String",
  "displayName": "String"
}
```




