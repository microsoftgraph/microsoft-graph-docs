# windowsProtectionState resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Device protection status entity.
## Methods
|Method|Return Type|Description|
|---|---|---|
|[List windowsProtectionStates](../api/intune_endpointprotection_windowsprotectionstate_list.md)|[windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md) collection|List properties and relationships of the [windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md) objects.|
|[Get windowsProtectionState](../api/intune_endpointprotection_windowsprotectionstate_get.md)|[windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md)|Read properties and relationships of the [windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md) object.|
|[Create windowsProtectionState](../api/intune_endpointprotection_windowsprotectionstate_create.md)|[windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md)|Create a new [windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md) object.|
|[Delete windowsProtectionState](../api/intune_endpointprotection_windowsprotectionstate_delete.md)|None|Deletes a [windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md).|
|[Update windowsProtectionState](../api/intune_endpointprotection_windowsprotectionstate_update.md)|[windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md)|Update the properties of a [windowsProtectionState](../resources/intune_endpointprotection_windowsprotectionstate.md) object.|
|[List windowsDeviceMalwareStates](../api/intune_endpointprotection_windowsprotectionstate_list_windowsdevicemalwarestate.md)|[windowsDeviceMalwareState](../resources/intune_endpointprotection_windowsdevicemalwarestate.md) collection|Get the windowsDeviceMalwareStates from the detectedMalwareState navigation property.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The unique Identifier for the device protection status object. This is device id of the device|
|malwareProtectionEnabled|Boolean|Anti malware is enabled or not|
|deviceState|String|Computer's state (like clean or pending full scan or pending reboot etc) Possible values are: `clean`, `fullScanPending`, `rebootPending`, `manualStepsPending`, `offlineScanPending`, `critical`.|
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
|---|---|---|
|detectedMalwareState|[windowsDeviceMalwareState](../resources/intune_endpointprotection_windowsdevicemalwarestate.md) collection|Device malware list|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsProtectionState"
}
-->
```json
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



