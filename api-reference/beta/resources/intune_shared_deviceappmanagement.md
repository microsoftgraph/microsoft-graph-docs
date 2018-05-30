# deviceAppManagement resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceAppManagement](../api/intune_shared_deviceappmanagement_get.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_shared_deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune_shared_deviceappmanagement_update.md)|Update the properties of a [deviceAppManagement](../resources/intune_shared_deviceappmanagement.md) object.|
|**Onboarding**|
|[syncMicrosoftStoreForBusinessApps action](../api/intune_shared_deviceappmanagement_syncmicrosoftstoreforbusinessapps.md)|None|Syncs Intune account with Microsoft Store For Business|

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
|enterpriseCodeSigningCertificates|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) collection|The Windows Enterprise Code Signing Certificate.|
|iosLobAppProvisioningConfigurations|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|The IOS Lob App Provisioning Configurations.|
|mobileAppCategories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The mobile app categories.|
|mobileAppConfigurations|[managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) collection|The Managed Device Mobile Application Configurations.|
|mobileApps|[mobileApp](../resources/intune_apps_mobileapp.md) collection|The mobile apps.|
|symantecCodeSigningCertificate|[symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md)|The WinPhone Symantec Code Signing Certificate.|
|**Books**|
|managedEBooks|[managedEBook](../resources/intune_books_managedebook.md) collection|The Managed eBook.|
|managedEBookCategories|[managedEBookCategory](../resources/intune_books_managedebookcategory.md) collection|The mobile eBook categories.|
|**Device management**|
|windowsManagementApp|[windowsManagementApp](../resources/intune_devices_windowsmanagementapp.md)|Windows management app.|
|**Mobile app management (MAM)**|
|androidManagedAppProtections|[androidManagedAppProtection](../resources/intune_mam_androidmanagedappprotection.md) collection|Android managed app policies.|
|defaultManagedAppProtections|[defaultManagedAppProtection](../resources/intune_mam_defaultmanagedappprotection.md) collection|Default managed app policies.|
|iosManagedAppProtections|[iosManagedAppProtection](../resources/intune_mam_iosmanagedappprotection.md) collection|iOS managed app policies.|
|managedAppPolicies|[managedAppPolicy](../resources/intune_mam_managedapppolicy.md) collection|Managed app policies.|
|managedAppRegistrations|[managedAppRegistration](../resources/intune_mam_managedappregistration.md) collection|The managed app registrations.|
|managedAppStatuses|[managedAppStatus](../resources/intune_mam_managedappstatus.md) collection|The managed app statuses.|
|mdmWindowsInformationProtectionPolicies|[mdmWindowsInformationProtectionPolicy](../resources/intune_mam_mdmwindowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are MDM enrolled.|
|targetedManagedAppConfigurations|[targetedManagedAppConfiguration](../resources/intune_mam_targetedmanagedappconfiguration.md) collection|Targeted managed app configurations.|
|windowsInformationProtectionPolicies|[windowsInformationProtectionPolicy](../resources/intune_mam_windowsinformationprotectionpolicy.md) collection|Windows information protection for apps running on devices which are not MDM enrolled.|
|**Onboarding**|
|sideLoadingKeys|[sideLoadingKey](../resources/intune_onboarding_sideloadingkey.md) collection|Side Loading Keys that are required for the Windows 8 and 8.1 Apps installation.|
|vppTokens|[vppToken](../resources/intune_onboarding_vpptoken.md) collection|List of Vpp tokens for this organization.|

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



