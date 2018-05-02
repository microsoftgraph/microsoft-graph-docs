# managementAgentType enum type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Management agent type.
## Members
|Member|Value|Description|
|:---|:---|:---|
|eas|1|The device is managed by Exchange server.|
|mdm|2|The device is managed by Intune MDM.|
|easMdm|3|The device is managed by both Exchange server and Intune MDM.|
|intuneClient|4|Intune client managed.|
|easIntuneClient|5|The device is EAS and Intune client dual managed.|
|configurationManagerClient|8|The device is managed by Configuration Manager.|
|configurationManagerClientMdm|10|The device is managed by Configuration Manager and MDM.|
|configurationManagerClientMdmEas|11|The device is managed by Configuration Manager, MDM and Eas.|
|unknown|16|Unknown management agent type.|
|jamf|32|The device attributes are fetched from Jamf.|
|googleCloudDevicePolicyController|64|The device is managed by Google's CloudDPC.|



