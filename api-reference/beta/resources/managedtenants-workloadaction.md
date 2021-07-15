---
title: "workloadAction resource type"
description: "Represents an action that will be performed for a specific workload."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# workloadAction resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action that will be performed for a specific workload.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionId|String|The unique identifier for the workload action. Required. Read-only.|
|category|workloadActionCategory|The category for the workload action. Possible values are: `automated`, `manual`, `unknownFutureValue`. Optional. Read-only.|
|description|String|The description for the workload action. Optional. Read-only.|
|displayName|String|The display name for the workload action. Optional. Read-only.|
|service|String|The service associated with workload action. Optional. Read-only.|
|settings|[microsoft.graph.managedTenants.setting](../resources/managedtenants-setting.md) collection|The collection of settings associated with the workload action. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.managedTenants.workloadAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.workloadAction",
  "actionId": "String",
  "category": "String",
  "displayName": "String",
  "description": "String",
  "service": "String",
  "settings": [
    {
      "@odata.type": "microsoft.graph.managedTenants.setting"
    }
  ]
}
```
