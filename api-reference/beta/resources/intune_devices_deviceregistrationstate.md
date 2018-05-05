# deviceRegistrationState enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device registration status.
## Members
|Member|Value|Description|
|:---|:---|:---|
|notRegistered|0|The device is not registered.|
|registered|2|The device is registered.|
|revoked|3|The device has been blocked, wiped or retired.|
|keyConflict|4|The device has a key conflict.|
|approvalPending|5|The device is pending approval.|
|certificateReset|6|The device certificate has been reset.|
|notRegisteredPendingEnrollment|7|The device is not registered and pending enrollment.|
|unknown|8|The device registration status is unknown.|



