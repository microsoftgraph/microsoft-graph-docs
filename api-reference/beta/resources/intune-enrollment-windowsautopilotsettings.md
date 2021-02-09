---
title: "windowsAutopilotSettings resource type"
description: "The windowsAutopilotSettings resource represents a Windows Autopilot Account to sync data with Windows device data sync service."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windowsAutopilotSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The windowsAutopilotSettings resource represents a Windows Autopilot Account to sync data with Windows device data sync service.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get windowsAutopilotSettings](../api/intune-enrollment-windowsautopilotsettings-get.md)|[windowsAutopilotSettings](../resources/intune-enrollment-windowsautopilotsettings.md)|Read properties and relationships of the [windowsAutopilotSettings](../resources/intune-enrollment-windowsautopilotsettings.md) object.|
|[Update windowsAutopilotSettings](../api/intune-enrollment-windowsautopilotsettings-update.md)|[windowsAutopilotSettings](../resources/intune-enrollment-windowsautopilotsettings.md)|Update the properties of a [windowsAutopilotSettings](../resources/intune-enrollment-windowsautopilotsettings.md) object.|
|[sync action](../api/intune-enrollment-windowsautopilotsettings-sync.md)|None|Initiates a sync of all AutoPilot registered devices from Store for Business and other portals. If the sync successful, this action returns a 204 No Content response code. If a sync is already in progress, the action returns a 409 Conflict response code.  If this sync action is called within 10 minutes of the previous sync, the action returns a 429 Too Many Requests response code.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object|
|lastSyncDateTime|DateTimeOffset|Last data sync date time with DDS service.|
|lastManualSyncTriggerDateTime|DateTimeOffset|Last data sync date time with DDS service.|
|syncStatus|[windowsAutopilotSyncStatus](../resources/intune-enrollment-windowsautopilotsyncstatus.md)|Indicates the status of sync with Device data sync (DDS) service. Possible values are: `unknown`, `inProgress`, `completed`, `failed`.|

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




