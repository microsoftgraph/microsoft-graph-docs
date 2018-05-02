# firewallCertificateRevocationListCheckMethodType enum type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values for firewallCertificateRevocationListCheckMethod
## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|none|1|Do not check certificate revocation list|
|attempt|2|Attempt CRL check and allow a certificate only if the certificate is confirmed by the check|
|require|3|Require a successful CRL check before allowing a certificate|



