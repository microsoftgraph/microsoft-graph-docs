---
title: "unmanagedDevice resource type"
description: "Unmanaged device discovered in the network."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# unmanagedDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Unmanaged device discovered in the network.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|os|String|Operating system.|
|osVersion|String|Operating system version.|
|ipAddress|String|IP address.|
|deviceName|String|Device name.|
|macAddress|String|MAC address.|
|domain|String|Domain.|
|manufacturer|String|Manufacturer.|
|model|String|Model.|
|location|String|Location.|
|lastLoggedOnUser|String|Last logged on user.|
|lastSeenDateTime|DateTimeOffset|Last seen date and time.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unmanagedDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unmanagedDevice",
  "os": "String",
  "osVersion": "String",
  "ipAddress": "String",
  "deviceName": "String",
  "macAddress": "String",
  "domain": "String",
  "manufacturer": "String",
  "model": "String",
  "location": "String",
  "lastLoggedOnUser": "String",
  "lastSeenDateTime": "String (timestamp)"
}
```




