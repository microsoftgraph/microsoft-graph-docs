---
title: "templateParameter resource type"
description: "Represents a parameter utilized in a management template."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# templateParameter resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a parameter utilized in a management template.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|The description for the template parameter. Optional. Read-only.|
|displayName|String|The display name for the template parameter. Required. Read-only.|
|jsonAllowedValues|String|The allowed values for the template parameter represented by a serialized string of JSON. Optional. Read-only.|
|jsonDefaultValue|String|The default value for the template parameter represented by a serialized string of JSON. Required. Read-only.|
|valueType|managementParameterValueType|The data type for the template parameter.. Possible values are: `string`, `integer`, `boolean`, `guid`, `stringCollection`, `integerCollection`, `booleanCollection`, `guidCollection`, `unknownFutureValue`. Required. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.templateParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.templateParameter",
  "displayName": "String",
  "description": "String",
  "valueType": "String",
  "jsonDefaultValue": "String",
  "jsonAllowedValues": "String"
}
```
