# iosMobileAppConfiguration resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties, inherited properties and actions for iOS mobile app configurations.

Inherits from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosMobileAppConfigurations](../api/intune_apps_iosmobileappconfiguration_list.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md) collection|List properties and relationships of the [iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md) objects.|
|[Get iosMobileAppConfiguration](../api/intune_apps_iosmobileappconfiguration_get.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md)|Read properties and relationships of the [iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md) object.|
|[Create iosMobileAppConfiguration](../api/intune_apps_iosmobileappconfiguration_create.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md)|Create a new [iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md) object.|
|[Delete iosMobileAppConfiguration](../api/intune_apps_iosmobileappconfiguration_delete.md)|None|Deletes a [iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md).|
|[Update iosMobileAppConfiguration](../api/intune_apps_iosmobileappconfiguration_update.md)|[iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md)|Update the properties of a [iosMobileAppConfiguration](../resources/intune_apps_iosmobileappconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|targetedMobileApps|String collection|the associated app. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|encodedSettingXml|Binary|mdm app configuration Base64 binary.|
|settings|[appConfigurationSettingItem](../resources/intune_apps_appconfigurationsettingitem.md) collection|app configuration setting items.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[managedDeviceMobileAppConfigurationAssignment](../resources/intune_apps_manageddevicemobileappconfigurationassignment.md) collection|The list of group assignemenets for app configration. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|deviceStatuses|[managedDeviceMobileAppConfigurationDeviceStatus](../resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection|List of ManagedDeviceMobileAppConfigurationDeviceStatus. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|userStatuses|[managedDeviceMobileAppConfigurationUserStatus](../resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) collection|List of ManagedDeviceMobileAppConfigurationUserStatus. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|deviceStatusSummary|[managedDeviceMobileAppConfigurationDeviceSummary](../resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)|App configuration device status summary. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|
|userStatusSummary|[managedDeviceMobileAppConfigurationUserSummary](../resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)|App configuration user status summary. Inherited from [managedDeviceMobileAppConfiguration](../resources/intune_apps_manageddevicemobileappconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosMobileAppConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosMobileAppConfiguration",
  "id": "String (identifier)",
  "targetedMobileApps": [
    "String"
  ],
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "version": 1024,
  "encodedSettingXml": "binary",
  "settings": [
    {
      "@odata.type": "microsoft.graph.appConfigurationSettingItem",
      "appConfigKey": "String",
      "appConfigKeyType": "String",
      "appConfigKeyValue": "String"
    }
  ]
}
```



