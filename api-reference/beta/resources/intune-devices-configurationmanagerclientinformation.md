---
title: "configurationManagerClientInformation resource type"
description: "Configuration Manager client information synced from SCCM"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# configurationManagerClientInformation resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Configuration Manager client information synced from SCCM

## Properties
|Property|Type|Description|
|:---|:---|:---|
|clientIdentifier|String|Configuration Manager Client Id from SCCM|
|isBlocked|Boolean|Configuration Manager Client blocked status from SCCM|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.configurationManagerClientInformation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.configurationManagerClientInformation",
  "clientIdentifier": "String",
  "isBlocked": true
}
```




