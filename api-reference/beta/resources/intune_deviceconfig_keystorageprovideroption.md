# keyStorageProviderOption enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Key Storage Provider (KSP) Import Options.
## Members
|Member|Value|Description|
|:---|:---|:---|
|useTpmKspOtherwiseUseSoftwareKsp|0|Import to Trusted Platform Module (TPM) KSP if present, otherwise import to Software KSP.|
|useTpmKspOtherwiseFail|1|Import to Trusted Platform Module (TPM) KSP if present, otherwise fail.|
|usePassportForWorkKspOtherwiseFail|2|Import to Passport for work KSP if available, otherwise fail.|
|useSoftwareKsp|3|Import to Software KSP.|



