---
title: "officeConfigurationGroupAssignmentTarget resource type"
description: "Office client configuration AAD group assignment target."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# officeConfigurationGroupAssignmentTarget resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Office client configuration AAD group assignment target.

Inherits from [officeConfigurationAssignmentTarget](../resources/intune-cirrus-officeconfigurationassignmenttarget.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|groupId|String|The Id of the AAD group we are targeting the device configuration to.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.officeConfigurationGroupAssignmentTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.officeConfigurationGroupAssignmentTarget",
  "groupId": "String"
}
```



