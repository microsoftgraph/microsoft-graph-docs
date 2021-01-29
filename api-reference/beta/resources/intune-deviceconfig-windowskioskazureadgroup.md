---
title: "windowsKioskAzureADGroup resource type"
description: "The class used to identify an AzureAD group for the kiosk configuration"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsKioskAzureADGroup resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The class used to identify an AzureAD group for the kiosk configuration


Inherits from [windowsKioskUser](../resources/intune-deviceconfig-windowskioskuser.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the AzureAD group that will be locked to this kiosk configuration|
|groupId|String|The ID of the AzureAD group that will be locked to this kiosk configuration|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsKioskAzureADGroup"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsKioskAzureADGroup",
  "displayName": "String",
  "groupId": "String"
}
```




