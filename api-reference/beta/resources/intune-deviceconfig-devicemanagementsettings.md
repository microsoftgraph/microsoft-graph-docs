---
title: "deviceManagementSettings resource type"
description: "Not yet documented"
localization_priority: Normal
author: "tfitzmac"
ms.prod: "Intune"
---

# deviceManagementSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceComplianceCheckinThresholdDays|Int32|The number of days a device is allowed to go without checking in to remain compliant. Valid values 0 to 120|
|isScheduledActionEnabled|Boolean|Is feature enabled or not for scheduled action for rule.|
|secureByDefault|Boolean|Device should be noncompliant when there is no compliance policy targeted when this is true|
|enhancedJailBreak|Boolean|Is feature enabled or not for enhanced jailbreak detection.|
|deviceInactivityBeforeRetirementInDay|Int32|When the device does not check in for specified number of days, the company data might be removed and the device will not be under management. Valid values 30 to 270|
|derivedCredentialProvider|[derivedCredentialProviderType](../resources/intune-deviceconfig-derivedcredentialprovidertype.md)|The Derived Credential Provider to use for this account. Possible values are: `notConfigured`, `entrustDataCard`, `purebred`, `xTec`, `intercede`.|
|derivedCredentialUrl|String|The Derived Credential Provider self-service URI.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettings",
  "deviceComplianceCheckinThresholdDays": 1024,
  "isScheduledActionEnabled": true,
  "secureByDefault": true,
  "enhancedJailBreak": true,
  "deviceInactivityBeforeRetirementInDay": 1024,
  "derivedCredentialProvider": "String",
  "derivedCredentialUrl": "String"
}
```




