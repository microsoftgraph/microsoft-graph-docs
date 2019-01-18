---
title: "officeClientConfiguration resource type"
description: "Office Client Configuration."
author: "tfitzmac"
localization_priority: Normal
ms.prod: "intune"
---

# officeClientConfiguration resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Office Client Configuration.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List officeClientConfigurations](../api/intune-cirrus-officeclientconfiguration-list.md)|[officeClientConfiguration](../resources/intune-cirrus-officeclientconfiguration.md) collection|List properties and relationships of the [officeClientConfiguration](../resources/intune-cirrus-officeclientconfiguration.md) objects.|
|[Get officeClientConfiguration](../api/intune-cirrus-officeclientconfiguration-get.md)|[officeClientConfiguration](../resources/intune-cirrus-officeclientconfiguration.md)|Read properties and relationships of the [officeClientConfiguration](../resources/intune-cirrus-officeclientconfiguration.md) object.|
|[assign action](../api/intune-cirrus-officeclientconfiguration-assign.md)|[officeClientConfigurationAssignment](../resources/intune-cirrus-officeclientconfigurationassignment.md) collection|Replace all targeted groups for a policy.|
|[updatePriorities action](../api/intune-cirrus-officeclientconfiguration-updatepriorities.md)|None|Update policy priorities.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the office client configuration policy.|
|userPreferencePayload|Stream|Preference settings JSON string in binary format, these values can be overridden by the user.|
|policyPayload|Stream|Policy settings JSON string in binary format, these values cannot be changed by the user.|
|description|String|Not yet documented|
|displayName|String|Admin provided description of the office client configuration policy.|
|lastModifiedDateTime|DateTime|Last modified datetime stamp of the policy.|
|priority|Int32|Priority value should be unique value for each policy under a tenant and will be used for conflict resolution, lower values mean priority is high.|
|userCheckinSummary|[officeUserCheckinSummary](../resources/intune-cirrus-officeusercheckinsummary.md)|User check-in summary for the policy.|
|checkinStatuses|[officeClientCheckinStatus](../resources/intune-cirrus-officeclientcheckinstatus.md) collection|List of office Client check-in status.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[officeClientConfigurationAssignment](../resources/intune-cirrus-officeclientconfigurationassignment.md) collection|The list of group assignments for the policy.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.officeClientConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.officeClientConfiguration",
  "id": "String (identifier)",
  "userPreferencePayload": "<Unknown Primitive Type Edm.Stream>",
  "policyPayload": "<Unknown Primitive Type Edm.Stream>",
  "description": "String",
  "displayName": "String",
  "priority": 1024,
  "userCheckinSummary": {
    "@odata.type": "microsoft.graph.officeUserCheckinSummary",
    "succeededUserCount": 1024,
    "failedUserCount": 1024
  },
  "checkinStatuses": [
    {
      "@odata.type": "microsoft.graph.officeClientCheckinStatus",
      "userPrincipalName": "String",
      "deviceName": "String",
      "devicePlatform": "String",
      "devicePlatformVersion": "String",
      "wasSuccessful": true,
      "userId": "String",
      "checkinDateTime": "String (timestamp)",
      "errorMessage": "String",
      "appliedPolicies": [
        "String"
      ]
    }
  ]
}
```



