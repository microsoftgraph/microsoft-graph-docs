---
title: "adminConsent resource type"
description: "Admin consent information."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# adminConsent resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Admin consent information.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|shareAPNSData|[adminConsentState](../resources/intune-devices-adminconsentstate.md)|The admin consent state of sharing user and device data to Apple. Possible values are: `notConfigured`, `granted`, `notGranted`.|
|shareUserExperienceAnalyticsData|[adminConsentState](../resources/intune-devices-adminconsentstate.md)|Gets or sets the admin consent for sharing User experience analytics data. Possible values are: `notConfigured`, `granted`, `notGranted`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.adminConsent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminConsent",
  "shareAPNSData": "String",
  "shareUserExperienceAnalyticsData": "String"
}
```




