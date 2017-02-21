# iosLobAppProvisioningConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

This topic provides descriptions of the declared methods, properties and relationships exposed by the IOS Lob App Provisioning Configuration resource.

Inherits from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)

## Methods
|Method|Return Type|Description|
|---|---|---|
|[List iosLobAppProvisioningConfigurations](../api/intune_apps_ioslobappprovisioningconfiguration_list.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) collection|List properties and relationships of the [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) objects.|
|[Get iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_get.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Read properties and relationships of the [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Create iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_create.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Create a new [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[Delete iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_delete.md)|None|Deletes a [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md).|
|[Update iosLobAppProvisioningConfiguration](../api/intune_apps_ioslobappprovisioningconfiguration_update.md)|[iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md)|Update the properties of a [iosLobAppProvisioningConfiguration](../resources/intune_apps_ioslobappprovisioningconfiguration.md) object.|
|[List mdmAppConfigGroupAssignments](../api/intune_apps_ioslobappprovisioningconfiguration_list_mdmappconfiggroupassignment.md)|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) collection|Get the mdmAppConfigGroupAssignments from the groupAssignments navigation property.|
|[List managedDeviceMobileAppConfigurationDeviceStatuses](../api/intune_apps_ioslobappprovisioningconfiguration_list_manageddevicemobileappconfigurationdevicestatus.md)|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|Get the managedDeviceMobileAppConfigurationDeviceStatuses from the deviceStatuses navigation property.|
|[List managedDeviceMobileAppConfigurationUserStatuses](../api/intune_apps_ioslobappprovisioningconfiguration_list_manageddevicemobileappconfigurationuserstatus.md)|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|Get the managedDeviceMobileAppConfigurationUserStatuses from the userStatuses navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|settingXml|String|mdm app configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|settings|[appConfigurationSettingItem](../resources/intune_apps_appconfigurationsettingitem.md) collection|app configuration setting items. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|targetedMobileApps|String collection|the associated app. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|expiration|DateTimeOffset|Optional profile expiration date	ime.|
|payloadFileName|String|Payload file name (*.mobileprovision | *.xml).|
|payload|Binary|Payload. (UTF8 encoded byte array)|

## Relationships
|Relationship|Type|Description|
|---|---|---|
|groupAssignments|[mdmAppConfigGroupAssignment](../resources/intune_apps_mdmappconfiggroupassignment.md) collection|the associated group assignments. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|deviceStatuses|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|List of ManagedDeviceMobileAppConfigurationDeviceStatus. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|List of ManagedDeviceMobileAppConfigurationUserStatus. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosLobAppProvisioningConfiguration"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.iosLobAppProvisioningConfiguration",
  "id": "String (identifier)",
  "settingXml": "String",
  "settings": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSettingItem",
      "appConfigKey": "String",
      "appConfigKeyType": "String",
      "appConfigKeyValue": "String"
    }
  ],
  "targetedMobileApps": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "expiration": "String (timestamp)",
  "payloadFileName": "String",
  "payload": "binary"
}
```
