# windowsAutopilotSettings resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

The windowsAutopilotSettings resource represents a Windows Autopilot Account to sync data with Windows device data sync service.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get windowsAutopilotSettings](../api/intune_enrollment_windowsautopilotsettings_get.md)|[windowsAutopilotSettings](../resources/intune_enrollment_windowsautopilotsettings.md)|Read properties and relationships of the [windowsAutopilotSettings](../resources/intune_enrollment_windowsautopilotsettings.md) object.|
|[Update windowsAutopilotSettings](../api/intune_enrollment_windowsautopilotsettings_update.md)|[windowsAutopilotSettings](../resources/intune_enrollment_windowsautopilotsettings.md)|Update the properties of a [windowsAutopilotSettings](../resources/intune_enrollment_windowsautopilotsettings.md) object.|
|[sync action](../api/intune_enrollment_windowsautopilotsettings_sync.md)|None|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|lastSyncDateTime|DateTimeOffset|Last data sync date time with DDS service.|
|lastManualSyncTriggerDateTime|DateTimeOffset|Last data sync date time with DDS service.|
|syncStatus|[windowsAutopilotSyncStatus](../resources/intune_enrollment_windowsautopilotsyncstatus.md)|Indicates the status of sync with Device data sync (DDS) service. Possible values are: `unknown`, `inProgress`, `completed`, `failed`.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsAutopilotSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsAutopilotSettings",
  "id": "String (identifier)",
  "lastSyncDateTime": "String (timestamp)",
  "lastManualSyncTriggerDateTime": "String (timestamp)",
  "syncStatus": "String"
}
```



