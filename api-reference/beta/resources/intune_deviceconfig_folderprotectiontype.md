# folderProtectionType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values of Folder Protection
## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Device default value, no intent.|
|enable|1|Block functionality.|
|auditMode|2|Allow functionality but generate logs.|
|blockDiskModification|3|Block untrusted apps from writing to disk sectors.|
|auditDiskModification|4|Generate logs when untrusted apps write to disk sectors.|



