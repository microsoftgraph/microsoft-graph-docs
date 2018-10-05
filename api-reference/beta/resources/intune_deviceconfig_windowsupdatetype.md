# windowsUpdateType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Which branch devices will receive their updates from
## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Allow the user to set.|
|all|1|Semi-annual Channel (Targeted). Device gets all applicable feature updates from Semi-annual Channel (Targeted).|
|businessReadyOnly|2|Semi-annual Channel. Device gets feature updates from Semi-annual Channel.|
|windowsInsiderBuildFast|3|Windows Insider build - Fast|
|windowsInsiderBuildSlow|4|Windows Insider build - Slow|
|windowsInsiderBuildRelease|5|Release Windows Insider build|



