# vppTokenActionFailureReason enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible types of reasons for an Apple Volume Purchase Program token action failure.
## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None.|
|appleFailure|1|There was an error on Apple's service.|
|internalError|2|There was an internal error.|
|expiredVppToken|3|There was an error because the Apple Volume Purchase Program token was expired.|
|expiredApplePushNotificationCertificate|4|There was an error because the Apple Volume Purchase Program Push Notification certificate expired.|



