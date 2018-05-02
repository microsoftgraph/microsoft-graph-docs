# managedDevicePartnerReportedHealthState enum type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Available health states for the Device Health API
## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Device health state is not yet reported|
|activated|1|Device has been activated by a mobile threat defense partner, but has not yet reported health.|
|deactivated|2|Device has been deactivated by a mobile threat defense partner. The device health is not known.|
|secured|3|Device is considered secured by the mobile threat defense partner.|
|lowSeverity|4|Device is considered low threat by the mobile threat defense partner.|
|mediumSeverity|5|Device is considered medium threat by the mobile threat defense partner.|
|highSeverity|6|Device is considered high threat by the mobile threat defense partner.|
|unresponsive|7|Device is considered unresponsive by the mobile threat defense partner. The device health is not known.|



