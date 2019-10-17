---
title: "mobileAppTroubleshootingAppStateHistory resource type"
description: "History Item contained in the Mobile App Troubleshooting Event."
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# mobileAppTroubleshootingAppStateHistory resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

History Item contained in the Mobile App Troubleshooting Event.


Inherits from [mobileAppTroubleshootingHistoryItem](../resources/intune-troubleshooting-mobileapptroubleshootinghistoryitem.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|occurrenceDateTime|DateTimeOffset|Time when the history item occurred. Inherited from [mobileAppTroubleshootingHistoryItem](../resources/intune-troubleshooting-mobileapptroubleshootinghistoryitem.md)|
|actionType|[mobileAppActionType](../resources/intune-troubleshooting-mobileappactiontype.md)|AAD security group id to which it was targeted. Possible values are: `unknown`, `installCommandSent`, `installed`, `uninstalled`, `userRequestedInstall`.|
|runState|[runState](../resources/intune-shared-runstate.md)|Status of the item. Possible values are: `unknown`, `success`, `fail`, `scriptError`, `pending`, `notApplicable`.|
|errorCode|String|Error code for the failure, empty if no failure.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mobileAppTroubleshootingAppStateHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppTroubleshootingAppStateHistory",
  "occurrenceDateTime": "String (timestamp)",
  "actionType": "String",
  "runState": "String",
  "errorCode": "String"
}
```



