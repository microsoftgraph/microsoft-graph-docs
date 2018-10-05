# windowsPrivacyDataAccessLevel enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Determine the access level to specific Windows privacy data category.
## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No access level specified, no intents. Device may behave either as in UserInControl or ForceAllow. It may depend on the privacy data been accessed, Windows versions and other factors.|
|forceAllow|1|Apps will be allowed to access the specified privacy data.|
|forceDeny|2|Apps will be denied to access specified privacy data.|
|userInControl|3|Users will be prompted when apps try to access specified privacy data.|



