---
title: "macOSSystemExtension resource type"
description: "Represents a specific macOS system extension."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# macOSSystemExtension resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a specific macOS system extension.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|teamIdentifier|String|Gets or sets the team identifier that was used to sign the system extension.|
|bundleId|String|Gets or sets the bundle identifier of the system extension.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSSystemExtension"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSSystemExtension",
  "teamIdentifier": "String",
  "bundleId": "String"
}
```




