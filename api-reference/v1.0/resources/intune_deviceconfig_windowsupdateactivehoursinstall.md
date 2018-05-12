# windowsUpdateActiveHoursInstall resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented

Inherits from [windowsUpdateInstallScheduleType](../resources/intune_deviceconfig_windowsupdateinstallscheduletype.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeHoursStart|TimeOfDay|Active Hours Start|
|activeHoursEnd|TimeOfDay|Active Hours End|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.windowsUpdateInstallScheduleType",
  "@odata.type": "microsoft.graph.windowsUpdateActiveHoursInstall"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdateActiveHoursInstall",
  "activeHoursStart": "String (time of day)",
  "activeHoursEnd": "String (time of day)"
}
```



