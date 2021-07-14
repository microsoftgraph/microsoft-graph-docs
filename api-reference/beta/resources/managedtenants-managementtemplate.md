---
title: "managementTemplate resource type"
description: "Represents a group of actions and setting that can be performed against a managed tenant."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# managementTemplate resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of actions and setting that can be performed against a managed tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List managementTemplates](../api/managedtenants-managedtenant-list-managementtemplates.md)|[microsoft.graph.managedTenants.managementTemplate](../resources/managedtenants-managementtemplate.md) collection|Get a list of the [managementTemplate](../resources/managedtenants-managementtemplate.md) objects and their properties.|
|[Get managementTemplate](../api/managedtenants-managementtemplate-get.md)|[microsoft.graph.managedTenants.managementTemplate](../resources/managedtenants-managementtemplate.md)|Read the properties and relationships of a [managementTemplate](../resources/managedtenants-managementtemplate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|managementCategory|The management category for the management template. Possible values are: `custom`, `devices`, `identity`, `unknownFutureValue`. Required. Read-only.|
|description|String|The description for the management template. Optional. Read-only.|
|displayName|String|The display name for the management template. Required. Read-only.|
|id|String|The unique identifier for the management template. Required. Read-only.|
|parameters|[microsoft.graph.managedTenants.templateParameter](../resources/managedtenants-templateparameter.md) collection|The collection of parameters used by the management template. Optional. Read-only.|
|workloadActions|[microsoft.graph.managedTenants.workloadAction](../resources/managedtenants-workloadaction.md) collection|The collection of workload actions associated with the management template. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.managementTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.managementTemplate",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "category": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.managedTenants.templateParameter"
    }
  ],
  "workloadActions": [
    {
      "@odata.type": "microsoft.graph.managedTenants.workloadAction"
    }
  ]
}
```
