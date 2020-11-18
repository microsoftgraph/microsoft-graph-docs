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

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
|microsoftStoreForBusinessPortalSelection|[microsoftStoreForBusinessPortalSelectionOptions](../resources/intune-onboarding-microsoftstoreforbusinessportalselectionoptions.md)|The end user portal information is used to sync applications from the Microsoft Store for Business to Intune Company Portal. There are three options to pick from \['Company portal only', 'Company portal and private store', 'Private store only'\]. Possible values are: `none`, `companyPortal`, `privateStore`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|**Apps**|
|enterpriseCodeSigningCertificates|[enterpriseCodeSigningCertificate](../resources/intune-apps-enterprisecodesigningcertificate.md) collection|The Windows Enterprise Code Signing Certificate.|
|iosLobAppProvisioningConfigurations|[iosLobAppProvisioningConfiguration](../resources/intune-shared-ioslobappprovisioningconfiguration.md) collection|The IOS Lob App Provisioning Configurations.|
|mobileAppCategories|[mobileAppCategory](../resources/intune-apps-mobileappcategory.md) collection|The mobile app categories.|
|mobileAppConfigurations|[managedDeviceMobileAppConfiguration](../resources/intune-apps-manageddevicemobileappconfiguration.md) collection|The Managed Device Mobile Application Configurations.|
|mobileApps|[mobileApp](../resources/intune-shared-mobileapp.md) collection|The mobile apps.|
|symantecCodeSigningCertificate|[symantecCodeSigningCertificate](../resources/intune-apps-symanteccodesigningcertificate.md)|The WinPhone Symantec Code Signing Certificate.|
|**Books**|
|managedEBooks|[managedEBook](../resources/intune-books-managedebook.md) collection|The Managed eBook.|
|managedEBookCategories|[managedEBookCategory](../resources/intune-books-managedebookcategory.md) collection|The mobile eBook categories.|
|**Device management**|
|windowsManagementApp|[windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md)|Windows management app.|
|**Mobile app management (MAM)**|
|androidManagedAppProtections|[androidManagedAppProtection](../resources/intune-shared-androidmanagedappprotection.md) collection|Android managed app policies.|
|defaultManagedAppProtections|[defaultManagedAppProtection](../resources/intune-mam-defaultmanagedappprotection.md) collection|Default managed app policies.|
|iosManagedAppProtections|[iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) collection|iOS managed app policies.|
|managedAppPolicies|[managedAppPolicy](../resources/intune-mam-managedapppolicy.md) collection|Managed app policies.|
|managedAppRegistrations|[managedAppRegistration](../resources/intune-mam-managedappregistration.md) collection|The managed app registrations.|
|managedAppStatuses|[managedAppStatus](../resources/intune-mam-managedappstatus.md) collection|The managed app statuses.|
|mdmWindowsInformationProtectionPolicies|[mdmWindowsInformationProtectionPolicy](../resources/intune-shared-mdmwindowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are MDM enrolled.|
|targetedManagedAppConfigurations|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) collection|Targeted managed app configurations.|
|windowsInformationProtectionPolicies|[windowsInformationProtectionPolicy](../resources/intune-mam-windowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are not MDM enrolled.|
|**Onboarding**|
|sideLoadingKeys|[sideLoadingKey](../resources/intune-onboarding-sideloadingkey.md) collection|Side Loading Keys that are required for the Windows 8 and 8.1 Apps installation.|
|vppTokens|[vppToken](../resources/intune-onboarding-vpptoken.md) collection|List of Vpp tokens for this organization.|
|**Policy Set**|
|policySets|[policySet](../resources/intune-policyset-policyset.md) collection|The PolicySet of Policies and Applications|
|mobileApps|[mobileApp](../resources/intune-shared-mobileapp.md) collection|The mobile apps.|
|targetedManagedAppConfigurations|[targetedManagedAppConfiguration](../resources/intune-shared-targetedmanagedappconfiguration.md) collection|Targeted managed app configurations.|
|androidManagedAppProtections|[androidManagedAppProtection](../resources/intune-shared-androidmanagedappprotection.md) collection|Android managed app policies.|
|iosManagedAppProtections|[iosManagedAppProtection](../resources/intune-shared-iosmanagedappprotection.md) collection|iOS managed app policies.|
|mdmWindowsInformationProtectionPolicies|[mdmWindowsInformationProtectionPolicy](../resources/intune-shared-mdmwindowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are MDM enrolled.|
|iosLobAppProvisioningConfigurations|[iosLobAppProvisioningConfiguration](../resources/intune-shared-ioslobappprovisioningconfiguration.md) collection|The IOS Lob App Provisioning Configurations.|
|**Partner Integration**|
|deviceAppManagementTasks|[deviceAppManagementTask](../resources/intune-partnerintegration-deviceappmanagementtask.md) collection|Device app management tasks.|
|**Unlock**|
|wdacSupplementalPolicies|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) collection|The collection of Windows Defender Application Control Supplemental Policies.|

## JSON Representation
Here is a JSON representation of the resource.  Note that this is only an example; query responses to actual queries will contain the properties appropriate for the context.  
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




