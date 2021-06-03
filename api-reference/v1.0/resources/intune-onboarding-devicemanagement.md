---
title: "deviceManagement resource type"
description: "Singleton entity that acts as a container for all device management functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceManagement](../api/intune-onboarding-devicemanagement-get.md)|[deviceManagement](../resources/intune-onboarding-devicemanagement.md)|Read properties and relationships of the [deviceManagement](../resources/intune-onboarding-devicemanagement.md) object.|
|[Update deviceManagement](../api/intune-onboarding-devicemanagement-update.md)|[deviceManagement](../resources/intune-onboarding-devicemanagement.md)|Update the properties of a [deviceManagement](../resources/intune-onboarding-devicemanagement.md) object.|
|[verifyWindowsEnrollmentAutoDiscovery function](../api/intune-onboarding-devicemanagement-verifywindowsenrollmentautodiscovery.md)|Boolean|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|intuneBrand|[intuneBrand](../resources/intune-onboarding-intunebrand.md)|intuneBrand contains data which is used in customizing the appearance of the Company Portal applications as well as the end user web portal.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|deviceCategories|[deviceCategory](../resources/intune-onboarding-devicecategory.md) collection|The list of device categories with the tenant.|
|exchangeConnectors|[deviceManagementExchangeConnector](../resources/intune-onboarding-devicemanagementexchangeconnector.md) collection|The list of Exchange Connectors configured by the tenant.|
|deviceEnrollmentConfigurations|[deviceEnrollmentConfiguration](../resources/intune-onboarding-deviceenrollmentconfiguration.md) collection|The list of device enrollment configurations|
|conditionalAccessSettings|[onPremisesConditionalAccessSettings](../resources/intune-onboarding-onpremisesconditionalaccesssettings.md)|The Exchange on premises conditional access settings. On premises conditional access will require devices to be both enrolled and compliant for mail access|
|mobileThreatDefenseConnectors|[mobileThreatDefenseConnector](../resources/intune-onboarding-mobilethreatdefenseconnector.md) collection|The list of Mobile threat Defense connectors configured by the tenant.|
|deviceManagementPartners|[deviceManagementPartner](../resources/intune-onboarding-devicemanagementpartner.md) collection|The list of Device Management Partners configured by the tenant.|
|complianceManagementPartners|[complianceManagementPartner](../resources/intune-onboarding-compliancemanagementpartner.md) collection|The list of Compliance Management Partners configured by the tenant.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "String (identifier)",
  "intuneBrand": {
    "@odata.type": "microsoft.graph.intuneBrand",
    "displayName": "String",
    "themeColor": {
      "@odata.type": "microsoft.graph.rgbColor",
      "r": 1024,
      "g": 1024,
      "b": 1024
    },
    "showLogo": true,
    "lightBackgroundLogo": {
      "@odata.type": "microsoft.graph.mimeContent",
      "type": "String",
      "value": "binary"
    },
    "darkBackgroundLogo": {
      "@odata.type": "microsoft.graph.mimeContent",
      "type": "String",
      "value": "binary"
    },
    "showNameNextToLogo": true,
    "showDisplayNameNextToLogo": true,
    "contactITName": "String",
    "contactITPhoneNumber": "String",
    "contactITEmailAddress": "String",
    "contactITNotes": "String",
    "onlineSupportSiteUrl": "String",
    "onlineSupportSiteName": "String",
    "privacyUrl": "String"
  }
}
```




