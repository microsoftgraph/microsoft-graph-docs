# deviceAppManagement resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Singleton entity that acts as a container for all device app management functionality.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get deviceAppManagement](../api/intune_apps_deviceappmanagement_get.md)|[deviceAppManagement](../resources/intune_apps_deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune_apps_deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune_apps_deviceappmanagement_update.md)|[deviceAppManagement](../resources/intune_apps_deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune_apps_deviceappmanagement.md) object.|
|[List mobileApps](../api/intune_apps_deviceappmanagement_list_mobileapp.md)|[mobileApp](../resources/intune_apps_mobileapp.md) collection|Get the mobileApps from the mobileApps navigation property.|
|[Create mobileApp](../api/intune_apps_deviceappmanagement_create_mobileapp.md)|[mobileApp](../resources/intune_apps_mobileapp.md)|Create a new [mobileApp](../resources/intune_apps_mobileapp.md) by posting to the mobileApps collection.|
|[List mobileAppCategories](../api/intune_apps_deviceappmanagement_list_mobileappcategory.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md) collection|Get the mobileAppCategories from the mobileAppCategories navigation property.|
|[Create mobileAppCategory](../api/intune_apps_deviceappmanagement_create_mobileappcategory.md)|[mobileAppCategory](../resources/intune_apps_mobileappcategory.md)|Create a new [mobileAppCategory](../resources/intune_apps_mobileappcategory.md) by posting to the mobileAppCategories collection.|
|[List enterpriseCodeSigningCertificates](../api/intune_apps_deviceappmanagement_list_enterprisecodesigningcertificate.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) collection|Get the enterpriseCodeSigningCertificates from the enterpriseCodeSigningCertificates navigation property.|
|[Create enterpriseCodeSigningCertificate](../api/intune_apps_deviceappmanagement_create_enterprisecodesigningcertificate.md)|[enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md)|Create a new [enterpriseCodeSigningCertificate](../resources/intune_apps_enterprisecodesigningcertificate.md) by posting to the enterpriseCodeSigningCertificates collection.|
|[List iosLobAppProvisioningConfigurations](../api/intune_apps_deviceappmanagement_list_ioslobappprovisioningconfiguration.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|Get the iosLobAppProvisioningConfigurations from the iosLobAppProvisioningConfigurations navigation property.|
|[Create iosLobAppProvisioningConfiguration](../api/intune_apps_deviceappmanagement_create_ioslobappprovisioningconfiguration.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Create a new [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) by posting to the iosLobAppProvisioningConfigurations collection.|
|[Get symantecCodeSigningCertificate](../api/intune_apps_deviceappmanagement_get_symanteccodesigningcertificate.md)|[symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md)|Get the [symantecCodeSigningCertificate](../resources/intune_apps_symanteccodesigningcertificate.md) from the symantecCodeSigningCertificate navigation property.|

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



