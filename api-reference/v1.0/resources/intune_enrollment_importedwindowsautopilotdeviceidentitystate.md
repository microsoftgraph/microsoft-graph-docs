# importedWindowsAutopilotDeviceIdentityState resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceImportStatus|[importedWindowsAutopilotDeviceIdentityImportStatus](../resources/intune_enrollment_importedwindowsautopilotdeviceidentityimportstatus.md)|Device status reported by Device Directory Service(DDS). Possible values are: `unknown`, `pending`, `partial`, `complete`, `error`.|
|deviceRegistrationId|String|Device Registration ID for successfully added device reported by Device Directory Service(DDS).|
|deviceErrorCode|Int32|Device error code reported by Device Directory Service(DDS).|
|deviceErrorName|String|Device error name reported by Device Directory Service(DDS).|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.importedWindowsAutopilotDeviceIdentityState"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.importedWindowsAutopilotDeviceIdentityState",
  "deviceImportStatus": "String",
  "deviceRegistrationId": "String",
  "deviceErrorCode": 1024,
  "deviceErrorName": "String"
}
```



