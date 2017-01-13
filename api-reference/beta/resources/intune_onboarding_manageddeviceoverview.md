# managedDeviceOverview resource type> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

Summary data for managed devices
### Methods
|Method|Return Type|Description|
|---|---|---|
|[Get managedDeviceOverview](../api/intune_onboarding_manageddeviceoverview_get.md)|[managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md)|Read properties and relationships of the [managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md) object.|
|[Update managedDeviceOverview](../api/intune_onboarding_manageddeviceoverview_update.md)|[managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md)|Update the properties of a [managedDeviceOverview](../resources/intune_onboarding_manageddeviceoverview.md) object.|

### Properties
|Property|Type|Description|
|---|---|---|
|id|String|Not yet documented|
|enrolledDeviceCount|Int32|Total enrolled device count. Does not include PC devices managed via Intune PC Agent|
|mdmEnrolledCount|Int32|The number of devices enrolled in MDM|
|dualEnrolledDeviceCount|Int32|The number of devices enrolled in both MDM and EAS|
|deviceOperatingSystemSummary|[deviceOperatingSystemSummary](../resources/intune_onboarding_deviceoperatingsystemsummary.md)|Device operating system summary.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedDeviceOverview"
}
-->
```json
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
    "windowsCount": 1024
  }
}
```



