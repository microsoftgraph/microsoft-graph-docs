---
title: "deviceManagementSettingDefinition resource type"
description: "Entity representing the defintion for a given setting"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagementSettingDefinition resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Entity representing the defintion for a given setting

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceManagementSettingDefinitions](../api/intune-deviceintent-devicemanagementsettingdefinition-list.md)|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) collection|List properties and relationships of the [deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) objects.|
|[Get deviceManagementSettingDefinition](../api/intune-deviceintent-devicemanagementsettingdefinition-get.md)|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md)|Read properties and relationships of the [deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) object.|
|[Create deviceManagementSettingDefinition](../api/intune-deviceintent-devicemanagementsettingdefinition-create.md)|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md)|Create a new [deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) object.|
|[Delete deviceManagementSettingDefinition](../api/intune-deviceintent-devicemanagementsettingdefinition-delete.md)|None|Deletes a [deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md).|
|[Update deviceManagementSettingDefinition](../api/intune-deviceintent-devicemanagementsettingdefinition-update.md)|[deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md)|Update the properties of a [deviceManagementSettingDefinition](../resources/intune-deviceintent-devicemanagementsettingdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the setting definition|
|valueType|[deviceManangementIntentValueType](../resources/intune-deviceintent-devicemanangementintentvaluetype.md)|The data type of the value. Possible values are: `integer`, `boolean`, `string`, `complex`, `collection`, `abstractComplex`.|
|displayName|String|The setting's display name|
|isTopLevel|Boolean|If the setting is top level, it can be configured without the need to be wrapped in a collection or complex setting|
|description|String|The setting's description|
|placeholderText|String|Placeholder text as an example of valid input|
|documentationUrl|String|Url to setting documentation|
|headerTitle|String|title of the setting header represents a category/section of a setting/settings|
|headerSubtitle|String|subtitle of the setting header for more details about the category/section|
|keywords|String collection|Keywords associated with the setting|
|constraints|[deviceManagementConstraint](../resources/intune-deviceintent-devicemanagementconstraint.md) collection|Collection of constraints for the setting value|
|dependencies|[deviceManagementSettingDependency](../resources/intune-deviceintent-devicemanagementsettingdependency.md) collection|Collection of dependencies on other settings|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementSettingDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettingDefinition",
  "id": "String (identifier)",
  "valueType": "String",
  "displayName": "String",
  "isTopLevel": true,
  "description": "String",
  "placeholderText": "String",
  "documentationUrl": "String",
  "headerTitle": "String",
  "headerSubtitle": "String",
  "keywords": [
    "String"
  ],
  "constraints": [
    {
      "@odata.type": "microsoft.graph.deviceManagementSettingAppConstraint",
      "supportedTypes": [
        "String"
      ]
    }
  ],
  "dependencies": [
    {
      "@odata.type": "microsoft.graph.deviceManagementSettingDependency",
      "definitionId": "String",
      "constraints": [
        {
          "@odata.type": "microsoft.graph.deviceManagementSettingAppConstraint",
          "supportedTypes": [
            "String"
          ]
        }
      ]
    }
  ]
}
```




