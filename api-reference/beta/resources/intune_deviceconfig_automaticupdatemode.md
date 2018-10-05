# automaticUpdateMode enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values for automatic update mode.
## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|notifyDownload|1|Notify on download.|
|autoInstallAtMaintenanceTime|2|Auto-install at maintenance time.|
|autoInstallAndRebootAtMaintenanceTime|3|Auto-install and reboot at maintenance time.|
|autoInstallAndRebootAtScheduledTime|4|Auto-install and reboot at scheduled time.|
|autoInstallAndRebootWithoutEndUserControl|5|Auto-install and restart without end-user control|



