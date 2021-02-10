---
title: "deviceManagementReports resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementReports resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagementReports](../api/intune-rapolicy-devicemanagementreports-get.md)|[deviceManagementReports](../resources/intune-rapolicy-devicemanagementreports.md)|Read properties and relationships of the [deviceManagementReports](../resources/intune-rapolicy-devicemanagementreports.md) object.|
|[Update deviceManagementReports](../api/intune-rapolicy-devicemanagementreports-update.md)|[deviceManagementReports](../resources/intune-rapolicy-devicemanagementreports.md)|Update the properties of a [deviceManagementReports](../resources/intune-rapolicy-devicemanagementreports.md) object.|
|[getCertificatesReport action](../api/intune-rapolicy-devicemanagementreports-getcertificatesreport.md)|Stream|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this entity|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementReports"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementReports",
  "id": "String (identifier)"
}
```




