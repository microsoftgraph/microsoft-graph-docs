---
title: "deviceAppManagement resource type"
description: "Singleton entity that acts as a container for all device app management functionality."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# deviceAppManagement resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device app management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceAppManagement](../api/intune-onboarding-deviceappmanagement-get.md)|[deviceAppManagement](../resources/intune-onboarding-deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune-onboarding-deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune-onboarding-deviceappmanagement-update.md)|[deviceAppManagement](../resources/intune-onboarding-deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune-onboarding-deviceappmanagement.md) object.|
|[syncMicrosoftStoreForBusinessApps action](../api/intune-onboarding-deviceappmanagement-syncmicrosoftstoreforbusinessapps.md)|None|Syncs Intune account with Microsoft Store For Business|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|microsoftStoreForBusinessLastSuccessfulSyncDateTime|DateTimeOffset|The last time the apps from the Microsoft Store for Business were synced successfully for the account.|
|isEnabledForMicrosoftStoreForBusiness|Boolean|Whether the account is enabled for syncing applications from the Microsoft Store for Business.|
|microsoftStoreForBusinessLanguage|String|The locale information used to sync applications from the Microsoft Store for Business. Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is <languagecode2>-<country/regioncode2>, where <languagecode2> is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.|
|microsoftStoreForBusinessLastCompletedApplicationSyncTime|DateTimeOffset|The last time an application sync from the Microsoft Store for Business was completed.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|vppTokens|[vppToken](../resources/intune-onboarding-vpptoken.md) collection|List of Vpp tokens for this organization.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)",
  "microsoftStoreForBusinessLastSuccessfulSyncDateTime": "String (timestamp)",
  "isEnabledForMicrosoftStoreForBusiness": true,
  "microsoftStoreForBusinessLanguage": "String",
  "microsoftStoreForBusinessLastCompletedApplicationSyncTime": "String (timestamp)"
}
```




