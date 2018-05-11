# managedDeviceOverview resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Summary data for managed devices
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get managedDeviceOverview](../api/intune_devices_manageddeviceoverview_get.md)|[managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md)|Read properties and relationships of the [managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md) object.|
|[Update managedDeviceOverview](../api/intune_devices_manageddeviceoverview_update.md)|[managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md)|Update the properties of a [managedDeviceOverview](../resources/intune_devices_manageddeviceoverview.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the summary|
|enrolledDeviceCount|Int32|Total enrolled device count. Does not include PC devices managed via Intune PC Agent|
|mdmEnrolledCount|Int32|The number of devices enrolled in MDM|
|dualEnrolledDeviceCount|Int32|The number of devices enrolled in both MDM and EAS|
|deviceOperatingSystemSummary|[deviceOperatingSystemSummary](../resources/intune_devices_deviceoperatingsystemsummary.md)|Device operating system summary.|
|deviceExchangeAccessStateSummary|[deviceExchangeAccessStateSummary](../resources/intune_devices_deviceexchangeaccessstatesummary.md)|Distribution of Exchange Access State in Intune|
|managedDeviceModelsAndManufacturers|[managedDeviceModelsAndManufacturers](../resources/intune_devices_manageddevicemodelsandmanufacturers.md)|Models and Manufactures meatadata for managed devices in the account|
|lastModifiedDateTime|DateTimeOffset|Last modified date time of device overview|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedDeviceOverview",
  "id": "String (identifier)",
  "enrolledDeviceCount": 1024,
  "mdmEnrolledCount": 1024,
  "dualEnrolledDeviceCount": 1024,
  "deviceOperatingSystemSummary": {
    "@odata.type": "microsoft.graph.deviceOperatingSystemSummary",
    "androidCount": 1024,
    "iosCount": 1024,
    "macOSCount": 1024,
    "windowsMobileCount": 1024,
    "windowsCount": 1024,
    "unknownCount": 1024
  },
  "deviceExchangeAccessStateSummary": {
    "@odata.type": "microsoft.graph.deviceExchangeAccessStateSummary",
    "allowedDeviceCount": 1024,
    "blockedDeviceCount": 1024,
    "quarantinedDeviceCount": 1024,
    "unknownDeviceCount": 1024,
    "unavailableDeviceCount": 1024
  },
  "managedDeviceModelsAndManufacturers": {
    "@odata.type": "microsoft.graph.managedDeviceModelsAndManufacturers",
    "deviceModels": [
      "String"
    ],
    "deviceManufacturers": [
      "String"
    ]
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```



