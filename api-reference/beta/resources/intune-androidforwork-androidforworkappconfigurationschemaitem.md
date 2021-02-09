---
title: "androidForWorkAppConfigurationSchemaItem resource type"
description: "Single configuration item inside an Android for Work application's custom configuration schema."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# androidForWorkAppConfigurationSchemaItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Single configuration item inside an Android for Work application's custom configuration schema.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|schemaItemKey|String|Unique key the application uses to identify the item|
|displayName|String|Human readable name|
|description|String|Description of what the item controls within the application|
|defaultBoolValue|Boolean|Default value for boolean type items, if specified by the app developer|
|defaultIntValue|Int32|Default value for integer type items, if specified by the app developer|
|defaultStringValue|String|Default value for string type items, if specified by the app developer|
|defaultStringArrayValue|String collection|Default value for string array type items, if specified by the app developer|
|dataType|[androidForWorkAppConfigurationSchemaItemDataType](../resources/intune-androidforwork-androidforworkappconfigurationschemaitemdatatype.md)|The type of value this item describes. Possible values are: `bool`, `integer`, `string`, `choice`, `multiselect`, `bundle`, `bundleArray`, `hidden`.|
|selections|[keyValuePair](../resources/intune-shared-keyvaluepair.md) collection|List of human readable name/value pairs for the valid values that can be set for this item (Choice and Multiselect items only)|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidForWorkAppConfigurationSchemaItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidForWorkAppConfigurationSchemaItem",
  "schemaItemKey": "String",
  "displayName": "String",
  "description": "String",
  "defaultBoolValue": true,
  "defaultIntValue": 1024,
  "defaultStringValue": "String",
  "defaultStringArrayValue": [
    "String"
  ],
  "dataType": "String",
  "selections": [
    {
      "@odata.type": "microsoft.graph.keyValuePair",
      "name": "String",
      "value": "String"
    }
  ]
}
```




