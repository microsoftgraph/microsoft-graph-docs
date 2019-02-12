---
title: "omaSettingBoolean resource type"
description: "OMA Settings Boolean definition."
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# omaSettingBoolean resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

OMA Settings Boolean definition.


Inherits from [omaSetting](../resources/intune-deviceconfig-omasetting.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name. Inherited from [omaSetting](../resources/intune-deviceconfig-omasetting.md)|
|description|String|Description. Inherited from [omaSetting](../resources/intune-deviceconfig-omasetting.md)|
|omaUri|String|OMA. Inherited from [omaSetting](../resources/intune-deviceconfig-omasetting.md)|
|value|Boolean|Value.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.omaSettingBoolean"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.omaSettingBoolean",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "value": true
}
```




