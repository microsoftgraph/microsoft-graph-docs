# appListType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values of the compliance app list.
## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default value, no intent.|
|appsInListCompliant|1|The list represents the apps that will be considered compliant (only apps on the list are compliant).|
|appsNotInListCompliant|2|The list represents the apps that will be considered non compliant (all apps are compliant except apps on the list).|



