# deviceEnrollmentType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible ways of adding a mobile device to management.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value, enrollment type was not collected.|
|userEnrollment|1|User driven enrollment through BYOD channel.|
|deviceEnrollmentManager|2|User enrollment with a device enrollment manager account.|
|appleBulkWithUser|3|Apple bulk enrollment with user challenge. (DEP, Apple Configurator)|
|appleBulkWithoutUser|4|Apple bulk enrollment without user challenge. (DEP, Apple Configurator, Mobile Config)|
|windowsAzureADJoin|5|Windows 10 Azure AD Join.|
|windowsBulkUserless|6|Windows 10 Bulk enrollment through ICD with certificate.|
|windowsAutoEnrollment|7|Windows 10 automatic enrollment. (Add work account)|
|windowsBulkAzureDomainJoin|8|Windows 10 bulk Azure AD Join.|
|windowsCoManagement|9|Windows 10 Co-Management triggered by AutoPilot or Group Policy.|
|**Troubleshooting**|
|windowsAzureADJoinUsingDeviceAuth|10|Windows 10 Azure AD Join using Device Auth.|



