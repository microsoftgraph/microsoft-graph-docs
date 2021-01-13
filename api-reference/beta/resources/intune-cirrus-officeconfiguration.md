---
title: "officeConfiguration resource type"
description: "Singleton entity that acts as a container for all device management functionality."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
doc_type: resourcePageType
---

# officeConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|Get officeConfiguration|[officeConfiguration](../resources/intune-cirrus-officeconfiguration.md)|Read properties and relationships of the [officeConfiguration](../resources/intune-cirrus-officeconfiguration.md) object.|
|Update officeConfiguration|[officeConfiguration](../resources/intune-cirrus-officeconfiguration.md)|Update the properties of a [officeConfiguration](../resources/intune-cirrus-officeconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Id of the office configuration.|
|tenantCheckinStatuses|[officeClientCheckinStatus](../resources/intune-cirrus-officeclientcheckinstatus.md) collection|List of office Client check-in status.|
|tenantUserCheckinSummary|[officeUserCheckinSummary](../resources/intune-cirrus-officeusercheckinsummary.md)|Entity that describes tenant check-in statues|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|clientConfigurations|[officeClientConfiguration](../resources/intune-cirrus-officeclientconfiguration.md) collection|List of office Client configuration.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.officeConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.officeConfiguration",
  "id": "String (identifier)",
  "tenantCheckinStatuses": [
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
  ],
  "tenantUserCheckinSummary": {
    "@odata.type": "microsoft.graph.officeUserCheckinSummary",
    "succeededUserCount": 1024,
    "failedUserCount": 1024
  }
}
```




