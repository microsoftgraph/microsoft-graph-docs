# managedAppDataEncryptionType enum type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Represents the level to which app data is encrypted for managed apps
## Members
|Member|Value|Description|
|:---|:---|:---|
|useDeviceSettings|0|App data is encrypted based on the default settings on the device.|
|afterDeviceRestart|1|App data is encrypted when the device is restarted.|
|whenDeviceLockedExceptOpenFiles|2|App data associated with this policy is encrypted when the device is locked, except data in files that are open|
|whenDeviceLocked|3|App data associated with this policy is encrypted when the device is locked|



