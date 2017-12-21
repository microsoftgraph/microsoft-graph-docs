# deviceProtectionOverview resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Hardware information of a given device.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalReportedDeviceCount|Int32|Total device count.|
|inactiveThreatAgentDeviceCount|Int32|Device with inactive threat agent count|
|unknownStateThreatAgentDeviceCount|Int32|Device with threat agent state as unknown count.|
|pendingSignatureUpdateDeviceCount|Int32|Device with old signature count.|
|cleanDeviceCount|Int32|Clean device count.|
|pendingFullScanDeviceCount|Int32|Pending full scan device count.|
|pendingRestartDeviceCount|Int32|Pending restart device count.|
|pendingManualStepsDeviceCount|Int32|Pending manual steps device count.|
|pendingOfflineScanDeviceCount|Int32|Pending offline scan device count.|
|criticalFailuresDeviceCount|Int32|Critical failures device count.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceProtectionOverview"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceProtectionOverview",
  "totalReportedDeviceCount": 1024,
  "inactiveThreatAgentDeviceCount": 1024,
  "unknownStateThreatAgentDeviceCount": 1024,
  "pendingSignatureUpdateDeviceCount": 1024,
  "cleanDeviceCount": 1024,
  "pendingFullScanDeviceCount": 1024,
  "pendingRestartDeviceCount": 1024,
  "pendingManualStepsDeviceCount": 1024,
  "pendingOfflineScanDeviceCount": 1024,
  "criticalFailuresDeviceCount": 1024
}
```



