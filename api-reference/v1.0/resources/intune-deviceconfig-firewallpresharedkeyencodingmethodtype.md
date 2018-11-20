# firewallPreSharedKeyEncodingMethodType enum type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values for firewallPreSharedKeyEncodingMethod
## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|none|1|Preshared key is not encoded. Instead, it is kept in its wide-character format|
|utF8|2|Encode the preshared key using UTF-8|



