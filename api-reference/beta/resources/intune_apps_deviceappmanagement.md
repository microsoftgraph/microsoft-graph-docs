# deviceAppManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceAppManagement](../api/intune_apps_deviceappmanagement_get.md)|[deviceAppManagement](../resources/intune_apps_deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_apps_deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune_apps_deviceappmanagement_update.md)|[deviceAppManagement](../resources/intune_apps_deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune_apps_deviceappmanagement.md) object.|
|[List mobileApps](../api/intune_apps_mobileapp_list.md)|[mobileApp](../resources/intune_apps_mobileapp.md) collection|List properties and relationships of the [mobileApp](../resources/intune_apps_mobileapp.md) objects.|
|[Create mobileApp](../api/intune_apps_mobileapp_create.md)|[mobileApp](../resources/intune_apps_mobileapp.md)|Create a new [mobileApp](../resources/intune_apps_mobileapp.md) object.|
|[List mobileAppCategories](../api/intune_apps_mobileappcategory_list.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|List properties and relationships of the [mobileAppCategory](../resources/intune_apps_mobileappcategory.md) objects.|
|[Create mobileAppCategory](../api/intune_apps_mobileappcategory_create.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md)|Create a new [mobileAppCategory](../resources/intune_apps_mobileappcategory.md) object.|
|[List enterpriseCodeSigningCertificates](../api/intune_apps_enterprisecodesigningcertificate_list.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) collection|List properties and relationships of the [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) objects.|
|[Create enterpriseCodeSigningCertificate](../api/intune_apps_enterprisecodesigningcertificate_create.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md)|Create a new [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) object.|
|[List iosLobAppProvisioningConfigurations](../api/intune_apps_ioslobappprovisioningconfiguration_list.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|List properties and relationships of the [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) objects.|
|[Create iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_create.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Create a new [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Get symantecCodeSigningCertificate](../api/intune_apps_symanteccodesigningcertificate_get.md)|[symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md)|Read properties and relationships of the [symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md) object.|
|[List managedDeviceMobileAppConfigurations](../api/intune_apps_manageddevicemobileappconfiguration_list.md)|[managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) collection|List properties and relationships of the [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) objects.|
|[Create managedDeviceMobileAppConfiguration](../api/intune_apps_manageddevicemobileappconfiguration_create.md)|[managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|Create a new [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|mobileApps|[mobileApp](../resources/intune_apps_mobileapp.md) collection|The mobile apps.|
|mobileAppCategories|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|The mobile app categories.|
|enterpriseCodeSigningCertificates|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) collection|The Windows Enterprise Code Signing Certificate.|
|iosLobAppProvisioningConfigurations|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|The IOS Lob App Provisioning Configurations.|
|symantecCodeSigningCertificate|[symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md)|The WinPhone Symantec Code Signing Certificate.|
|mobileAppConfigurations|[managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md) collection|The Managed Device Mobile Application Configurations.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```



