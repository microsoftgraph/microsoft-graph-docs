---
title: "excludedApps resource type"
description: "Contains properties for Excluded Office365 Apps."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# excludedApps resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for Excluded Office365 Apps.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|access|Boolean|The value for if MS Office Access should be excluded or not.|
|bing|Boolean|The value for if Microsoft Search as default should be excluded or not.|
|excel|Boolean|The value for if MS Office Excel should be excluded or not.|
|groove|Boolean|The value for if MS Office OneDrive for Business - Groove should be excluded or not.|
|infoPath|Boolean|The value for if MS Office InfoPath should be excluded or not.|
|lync|Boolean|The value for if MS Office Skype for Business - Lync should be excluded or not.|
|oneDrive|Boolean|The value for if MS Office OneDrive should be excluded or not.|
|oneNote|Boolean|The value for if MS Office OneNote should be excluded or not.|
|outlook|Boolean|The value for if MS Office Outlook should be excluded or not.|
|powerPoint|Boolean|The value for if MS Office PowerPoint should be excluded or not.|
|publisher|Boolean|The value for if MS Office Publisher should be excluded or not.|
|sharePointDesigner|Boolean|The value for if MS Office SharePointDesigner should be excluded or not.|
|teams|Boolean|The value for if MS Office Teams should be excluded or not.|
|visio|Boolean|The value for if MS Office Visio should be excluded or not.|
|word|Boolean|The value for if MS Office Word should be excluded or not.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.excludedApps"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.excludedApps",
  "access": true,
  "bing": true,
  "excel": true,
  "groove": true,
  "infoPath": true,
  "lync": true,
  "oneDrive": true,
  "oneNote": true,
  "outlook": true,
  "powerPoint": true,
  "publisher": true,
  "sharePointDesigner": true,
  "teams": true,
  "visio": true,
  "word": true
}
```




