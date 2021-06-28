---
title: "omaSettingInteger resource type"
description: "OMA Settings Integer definition."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# omaSettingInteger resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

OMA Settings Integer definition.


Inherits from [omaSetting](../resources/intune-deviceconfig-omasetting.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name. Inherited from [omaSetting](../resources/intune-deviceconfig-omasetting.md)|
|description|String|Description. Inherited from [omaSetting](../resources/intune-deviceconfig-omasetting.md)|
|omaUri|String|OMA. Inherited from [omaSetting](../resources/intune-deviceconfig-omasetting.md)|
|value|Int32|Value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.omaSettingInteger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.omaSettingInteger",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "value": 1024
}
```




