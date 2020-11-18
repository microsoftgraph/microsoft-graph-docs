---
title: "keyBooleanValuePair resource type"
description: "A key-value pair with a string key and a Boolean value."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# keyBooleanValuePair resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A key-value pair with a string key and a Boolean value.


Inherits from [keyTypedValuePair](../resources/intune-deviceconfig-keytypedvaluepair.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|key|String|The string key of the key-value pair. Inherited from [keyTypedValuePair](../resources/intune-deviceconfig-keytypedvaluepair.md)|
|value|Boolean|The Boolean value of the key-value pair.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.keyBooleanValuePair"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.keyBooleanValuePair",
  "key": "String",
  "value": true
}
```




