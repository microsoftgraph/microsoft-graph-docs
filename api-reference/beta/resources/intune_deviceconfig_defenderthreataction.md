# defenderThreatAction enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Defender’s default action to take on detected Malware threats.
## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Apply action based on the update definition.|
|clean|1|Clean the detected threat.|
|quarantine|2|Quarantine the detected threat.|
|remove|3|Remove the detected threat.|
|allow|4|Allow the detected threat.|
|userDefined|5|Allow the user to determine the action to take with the detected threat.|
|block|6|Block the detected threat.|



