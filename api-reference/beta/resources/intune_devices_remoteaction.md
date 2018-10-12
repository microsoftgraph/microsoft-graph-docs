# remoteAction enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Remote actions Intune supports.
## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|User initiates an unknown action.|
|factoryReset|1|User initiates an action to factory reset a device. |
|removeCompanyData|2|User initiates an action to remove company data from a device. |
|resetPasscode|3|User initiates an action to remove the passcode of an iOS device, or reset the passcode of Android / Windows device. |
|remoteLock|4|User initiates an action to remote lock a device.|
|enableLostMode|5|User initiates an action to enable lost mode on a supervised iOS device.|
|disableLostMode|6|User initiates an action to disable lost mode on a supervised iOS device.|
|locateDevice|7|User initiates an action to locate a supervised iOS device.|
|rebootNow|8|User initiates an action to reboot a Windows device.|
|recoverPasscode|9|User initiates an action to reset the pin for passport for work on windows phone device.|
|cleanWindowsDevice|10|User initiates an action to clean up windows device.|
|logoutSharedAppleDeviceActiveUser|11|User initiates an action to log out current user on shared apple device.|
|quickScan|12|User initiates an action to run quick scan on device.|
|fullScan|13|User initiates an action to run full scan on device.|
|windowsDefenderUpdateSignatures|14|User initiates an action to update malware signatures on device.|
|factoryResetKeepEnrollmentData|15|User initiates an action remote wipe device with keeping enrollment data.|
|updateDeviceAccount|16|User initiates an action to update account on device.|
|automaticRedeployment|17|User initiates an action to automatice redeploy the device|
|shutDown|18|User initiates an action to shut down the device.|



