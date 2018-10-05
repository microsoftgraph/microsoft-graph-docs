# windowsDeviceHealthState enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Computer endpoint protection state
## Members
|Member|Value|Description|
|:---|:---|:---|
|clean|0|Computer is clean and no action is required|
|fullScanPending|1|Computer is in pending full scan state|
|rebootPending|2|Computer is in pending reboot state|
|manualStepsPending|4|Computer is in pending manual steps state|
|offlineScanPending|8|Computer is in pending offline scan state|
|critical|16|Computer is in critical failure state|



