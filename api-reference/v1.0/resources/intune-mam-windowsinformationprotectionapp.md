---
title: "windowsInformationProtectionApp resource type"
description: "App for Windows information protection"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsInformationProtectionApp resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App for Windows information protection

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|App display name.|
|description|String|The app's description.|
|publisherName|String|The publisher name|
|productName|String|The product name.|
|denied|Boolean|If true, app is denied protection or exemption.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsInformationProtectionApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionApp",
  "displayName": "String",
  "description": "String",
  "publisherName": "String",
  "productName": "String",
  "denied": true
}
```




