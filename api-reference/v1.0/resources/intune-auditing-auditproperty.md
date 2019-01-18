---
title: "auditProperty resource type"
description: "A class containing the properties for Audit Property."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# auditProperty resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class containing the properties for Audit Property.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name.|
|oldValue|String|Old value.|
|newValue|String|New value.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.auditProperty"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditProperty",
  "displayName": "String",
  "oldValue": "String",
  "newValue": "String"
}
```



