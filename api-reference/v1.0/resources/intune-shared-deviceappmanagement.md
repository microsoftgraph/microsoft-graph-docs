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
|[Get deviceAppManagement](../api/intune-shared-deviceappmanagement-get.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune-shared-deviceappmanagement-update.md)|Update the properties of a [deviceAppManagement](../resources/intune-shared-deviceappmanagement.md) object.|
|**Onboarding**|
|[syncMicrosoftStoreForBusinessApps action](../api/intune-shared-deviceappmanagement-syncmicrosoftstoreforbusinessapps.md)|None|Syncs Intune account with Microsoft Store For Business|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|**Onboarding**|
|isEnabledForMicrosoftStoreForBusiness|Boolean|Whether the account is enabled for syncing applications from the Microsoft Store for Business.|
|microsoftStoreForBusinessLanguage|String|The locale information used to sync applications from the Microsoft Store for Business. Cultures that are specific to a country/region. The names of these cultures follow RFC 4646 (Windows Vista and later). The format is <languagecode2>-<country/regioncode2>, where <languagecode2> is a lowercase two-letter code derived from ISO 639-1 and <country/regioncode2> is an uppercase two-letter code derived from ISO 3166. For example, en-US for English (United States) is a specific culture.|
|microsoftStoreForBusinessLastCompletedApplicationSyncTime|DateTimeOffset|The last time an application sync from the Microsoft Store for Business was completed.|
|microsoftStoreForBusinessLastSuccessfulSyncDateTime|DateTimeOffset|The last time the apps from the Microsoft Store for Business were synced successfully for the account.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Apps**|
|mobileAppCategories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The mobile app categories.|
|mobileAppConfigurations|[managedDeviceMobileAppConfiguration](../resources/intune-apps-manageddevicemobileappconfiguration.md) collection|The Managed Device Mobile Application Configurations.|
|mobileApps|[mobileApp](../resources/intune-apps-mobileapp.md) collection|The mobile apps.|
|**Books**|
|managedEBooks|[managedEBook](../resources/intune-books-managedebook.md) collection|The Managed eBook.|
|**Mobile app management (MAM)**|
|androidManagedAppProtections|[androidManagedAppProtection](../resources/intune-mam-androidmanagedappprotection.md) collection|Android managed app policies.|
|defaultManagedAppProtections|[defaultManagedAppProtection](../resources/intune-mam-defaultmanagedappprotection.md) collection|Default managed app policies.|
|iosManagedAppProtections|[iosManagedAppProtection](../resources/intune-mam-iosmanagedappprotection.md) collection|iOS managed app policies.|
|managedAppPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Managed app policies.|
|managedAppRegistrations|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|The managed app registrations.|
|managedAppStatuses|[managedAppStatus](../resources/intune-mam-managedappstatus.md) collection|The managed app statuses.|
|mdmWindowsInformationProtectionPolicies|[mdmWindowsInformationProtectionPolicy](../resources/intune-mam-mdmwindowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are MDM enrolled.|
|targetedManagedAppConfigurations|[targetedManagedAppConfiguration](../resources/intune-mam-targetedmanagedappconfiguration.md) collection|Targeted managed app configurations.|
|windowsInformationProtectionPolicies|[windowsInformationProtectionPolicy](../resources/intune-mam-windowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are not MDM enrolled.|
|**Onboarding**|
|vppTokens|[vppToken](../resources/intune-onboarding-vpptoken.md) collection|List of Vpp tokens for this organization.|

## JSON Representation
Here is a JSON representation of the resource.  Note that this is only an example; query responses to actual queries will contain the properties appropriate for the context.  
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
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









