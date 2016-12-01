# resetPasscodeActionResult resource type

Reset passcode action result

Inherits from [deviceActionResult](../resources/intune_onboarding_deviceActionResult.md)

### Properties
|Property|Type|Description|
|---|---|---|
|actionName|String|Action name Inherited from [deviceActionResult](../resources/intune_onboarding_deviceActionResult.md)|
|actionState|String|State of the action Inherited from [deviceActionResult](../resources/intune_onboarding_deviceActionResult.md) Possible values are: `none`, `pending`, `cancel`, `active`, `done`, `failed`, `notSupported`.|
|startDateTime|DateTimeOffset|Time the action was initiated Inherited from [deviceActionResult](../resources/intune_onboarding_deviceActionResult.md)|
|lastUpdatedDateTime|DateTimeOffset|Time the action state was last updated Inherited from [deviceActionResult](../resources/intune_onboarding_deviceActionResult.md)|
|passcode|String|Newly generated passcode for the device |

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.resetPasscodeActionResult"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.resetPasscodeActionResult",
  "actionName": "String",
  "actionState": "String",
  "startDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "passcode": "String"
}
```


