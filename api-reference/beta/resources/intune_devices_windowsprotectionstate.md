# windowsProtectionState resource type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device protection status entity.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get windowsProtectionState](../api/intune_devices_windowsprotectionstate_get.md)|[windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md)|Read properties and relationships of the [windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md) object.|
|[Update windowsProtectionState](../api/intune_devices_windowsprotectionstate_update.md)|[windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md)|Update the properties of a [windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique Identifier for the device protection status object. This is device id of the device|
|malwareProtectionEnabled|Boolean|Anti malware is enabled or not|
|deviceState|[windowsDeviceHealthState](../resources/intune_devices_windowsdevicehealthstate.md)|Computer's state (like clean or pending full scan or pending reboot etc). Possible values are: `clean`, `fullScanPending`, `rebootPending`, `manualStepsPending`, `offlineScanPending`, `critical`.|
|realTimeProtectionEnabled|Boolean|Real time protection is enabled or not?|
|networkInspectionSystemEnabled|Boolean|Network inspection system enabled or not?|
|quickScanOverdue|Boolean|Quick scan overdue or not?|
|fullScanOverdue|Boolean|Full scan overdue or not?|
|signatureUpdateOverdue|Boolean|Signature out of date or not?|
|rebootRequired|Boolean|Reboot required or not?|
|fullScanRequired|Boolean|Full scan required or not?|
|engineVersion|String|Current endpoint protection engine's version|
|signatureVersion|String|Current malware definitions version|
|antiMalwareVersion|String|Current anti malware version|
|lastQuickScanDateTime|DateTimeOffset|Last quick scan datetime|
|lastFullScanDateTime|DateTimeOffset|Last quick scan datetime|
|lastQuickScanSignatureVersion|String|Last quick scan signature version|
|lastFullScanSignatureVersion|String|Last full scan signature version|
|lastReportedDateTime|DateTimeOffset|Last device health status reported time|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|detectedMalwareState|[windowsDeviceMalwareState](../resources/intune_devices_windowsdevicemalwarestate.md) collection|Device malware list|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsProtectionState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsProtectionState",
  "id": "String (identifier)",
  "malwareProtectionEnabled": true,
  "deviceState": "String",
  "realTimeProtectionEnabled": true,
  "networkInspectionSystemEnabled": true,
  "quickScanOverdue": true,
  "fullScanOverdue": true,
  "signatureUpdateOverdue": true,
  "rebootRequired": true,
  "fullScanRequired": true,
  "engineVersion": "String",
  "signatureVersion": "String",
  "antiMalwareVersion": "String",
  "lastQuickScanDateTime": "String (timestamp)",
  "lastFullScanDateTime": "String (timestamp)",
  "lastQuickScanSignatureVersion": "String",
  "lastFullScanSignatureVersion": "String",
  "lastReportedDateTime": "String (timestamp)"
}
```



