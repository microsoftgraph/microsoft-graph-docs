---
title: "userExperienceAnalyticsRemoteConnection resource type"
description: "The user experience analyte remote connection entity."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsRemoteConnection resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analyte remote connection entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsRemoteConnections](../api/intune-devices-userexperienceanalyticsremoteconnection-list.md)|[userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) collection|List properties and relationships of the [userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) objects.|
|[Get userExperienceAnalyticsRemoteConnection](../api/intune-devices-userexperienceanalyticsremoteconnection-get.md)|[userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md)|Read properties and relationships of the [userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) object.|
|[Create userExperienceAnalyticsRemoteConnection](../api/intune-devices-userexperienceanalyticsremoteconnection-create.md)|[userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md)|Create a new [userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) object.|
|[Delete userExperienceAnalyticsRemoteConnection](../api/intune-devices-userexperienceanalyticsremoteconnection-delete.md)|None|Deletes a [userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md).|
|[Update userExperienceAnalyticsRemoteConnection](../api/intune-devices-userexperienceanalyticsremoteconnection-update.md)|[userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md)|Update the properties of a [userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) object.|
|[summarizeDeviceRemoteConnection function](../api/intune-devices-userexperienceanalyticsremoteconnection-summarizedeviceremoteconnection.md)|[userExperienceAnalyticsRemoteConnection](../resources/intune-devices-userexperienceanalyticsremoteconnection.md) collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics remote connection entity.|
|deviceId|String|The id of the device.|
|deviceName|String|The name of the device.|
|model|String|The user experience analytics device model.|
|virtualNetwork|String|The user experience analytics virtual network.|
|deviceCount|Int32|The count of remote connection. Valid values 0 to 2147483647|
|cloudPcRoundTripTime|Double|The round tip time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308|
|cloudPcSignInTime|Double|The sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308|
|remoteSignInTime|Double|The remote sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308|
|coreBootTime|Double|The core boot time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308|
|coreSignInTime|Double|The core sign in time of Cloud PC Device. Valid values 0 to 1.79769313486232E+308|
|cloudPcFailurePercentage|Double|The sign in failure percentage of Cloud PC Device. Valid values 0 to 100|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsRemoteConnection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsRemoteConnection",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceName": "String",
  "model": "String",
  "virtualNetwork": "String",
  "deviceCount": 1024,
  "cloudPcRoundTripTime": "4.2",
  "cloudPcSignInTime": "4.2",
  "remoteSignInTime": "4.2",
  "coreBootTime": "4.2",
  "coreSignInTime": "4.2",
  "cloudPcFailurePercentage": "4.2"
}
```




