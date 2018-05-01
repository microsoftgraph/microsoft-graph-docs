# defenderPotentiallyUnwantedAppAction enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Defender’s action to take on detected Potentially Unwanted Application (PUA).
## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|PUA Protection is off. Defender will not protect against potentially unwanted applications.|
|block|1|PUA Protection is on. Detected items are blocked. They will show in history along with other threats.|
|audit|2|Audit mode. Defender will detect potentially unwanted applications, but take no actions. You can review information about applications Defender would have taken action against by searching for events created by Defender in the Event Viewer.|



