# deviceManagementSettings resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceComplianceCheckinThresholdDays|Int32|The number of days a device is allowed to go without checking in to remain compliant. Valid values 0 to 120|
|isScheduledActionEnabled|Boolean|Is feature enabled or not for scheduled action for rule.|
|secureByDefault|Boolean|Device should be noncompliant when there is no compliance policy targeted when this is true|
|enhancedJailBreak|Boolean|Is feature enabled or not for enhanced jailbreak detection.|
|deviceInactivityBeforeRetirementInDay|Int32|When the device does not check in for specified number of days, the company data might be removed and the device will not be under management. Valid values 30 to 270|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceManagementSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementSettings",
  "deviceComplianceCheckinThresholdDays": 1024,
  "isScheduledActionEnabled": true,
  "secureByDefault": true,
  "enhancedJailBreak": true,
  "deviceInactivityBeforeRetirementInDay": 1024
}
```



