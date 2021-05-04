---
title: "outOfBoxExperienceSettings resource type"
description: "Out of box experience setting"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# outOfBoxExperienceSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Out of box experience setting

## Properties
|Property|Type|Description|
|:---|:---|:---|
|hidePrivacySettings|Boolean|Show or hide privacy settings to user|
|hideEULA|Boolean|Show or hide EULA to user|
|userType|[windowsUserType](../resources/intune-enrollment-windowsusertype.md)|Type of user. Possible values are: `administrator`, `standard`.|
|deviceUsageType|[windowsDeviceUsageType](../resources/intune-enrollment-windowsdeviceusagetype.md)|AAD join authentication type. Possible values are: `singleUser`, `shared`.|
|skipKeyboardSelectionPage|Boolean|If set, then skip the keyboard selection page if Language and Region are set|
|hideEscapeLink|Boolean|If set to true, then the user can't start over with different account, on company sign-in|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.outOfBoxExperienceSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.outOfBoxExperienceSettings",
  "hidePrivacySettings": true,
  "hideEULA": true,
  "userType": "String",
  "deviceUsageType": "String",
  "skipKeyboardSelectionPage": true,
  "hideEscapeLink": true
}
```




