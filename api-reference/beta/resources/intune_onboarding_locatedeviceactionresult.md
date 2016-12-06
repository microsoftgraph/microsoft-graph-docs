# locateDeviceActionResult resource type

Locate device action result

Inherits from [deviceActionResult](../resources/intune_onboarding_deviceactionresult.md)

### Properties
|Property|Type|Description|
|---|---|---|
|actionName|String|Action name Inherited from [deviceActionResult](../resources/intune_onboarding_deviceactionresult.md)|
|actionState|String|State of the action Inherited from [deviceActionResult](../resources/intune_onboarding_deviceactionresult.md) Possible values are: `none`, `pending`, `cancel`, `active`, `done`, `failed`, `notSupported`.|
|startDateTime|DateTimeOffset|Time the action was initiated Inherited from [deviceActionResult](../resources/intune_onboarding_deviceactionresult.md)|
|lastUpdatedDateTime|DateTimeOffset|Time the action state was last updated Inherited from [deviceActionResult](../resources/intune_onboarding_deviceactionresult.md)|
|deviceLocation|[deviceGeoLocation](../resources/intune_onboarding_devicegeolocation.md)|device location|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.locateDeviceActionResult"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.locateDeviceActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "deviceLocation": {
    "@odata.type": "microsoft.graph.deviceGeoLocation",
    "lastCollectedDateTimeUtc": "String (timestamp)",
    "longitude": "<Unknown Primitive Type Edm.Double>",
    "latitude": "<Unknown Primitive Type Edm.Double>",
    "altitude": "<Unknown Primitive Type Edm.Double>",
    "horizontalAccuracy": "<Unknown Primitive Type Edm.Double>",
    "verticalAccuracy": "<Unknown Primitive Type Edm.Double>",
    "heading": "<Unknown Primitive Type Edm.Double>",
    "speed": "<Unknown Primitive Type Edm.Double>"
  }
}
```



