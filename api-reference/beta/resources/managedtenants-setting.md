---
title: "setting resource type"
description: "Represents a setting that is used within a baseline."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# setting resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a setting that is used within a baseline.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the setting. Required. Read-only.|
|jsonValue|String|The value for the setting serialized as string of JSON. Required. Read-only.|
|overwriteAllowed|Boolean|A flag indicating whether the setting can be override existing configurations when applied. Required. Read-only.|
|valueType|managementParameterValueType|The data type for the setting. Possible values are: `string`, `integer`, `boolean`, `guid`, `stringCollection`, `integerCollection`, `booleanCollection`, `guidCollection`, `unknownFutureValue`. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.setting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.setting",
  "displayName": "String",
  "overwriteAllowed": "Boolean",
  "valueType": "String",
  "jsonValue": "String"
}
```
