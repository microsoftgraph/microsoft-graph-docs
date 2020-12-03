---
title: "iosAvailableUpdateVersion resource type"
description: "iOS available update version details"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosAvailableUpdateVersion resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

iOS available update version details

## Properties
|Property|Type|Description|
|:---|:---|:---|
|productVersion|String|The version of the update.|
|postingDateTime|DateTimeOffset|The posting date of the update.|
|expirationDateTime|DateTimeOffset|The expiration date of the update.|
|supportedDevices|String collection|List of supported devices for the update.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosAvailableUpdateVersion"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosAvailableUpdateVersion",
  "productVersion": "String",
  "postingDateTime": "String (timestamp)",
  "expirationDateTime": "String (timestamp)",
  "supportedDevices": [
    "String"
  ]
}
```




