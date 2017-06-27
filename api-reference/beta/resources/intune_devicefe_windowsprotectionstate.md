#  resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

**TODO: Documentation is missing please add the `\[ODataDescription()\]` and/or `\[ODataLongDescription()\]` attributes.**
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get windowsProtectionState](../api/intune_devicefe_windowsprotectionstate_get.md)|[windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md)|Read properties and relationships of the [windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md) object.|
|[Update windowsProtectionState](../api/intune_devicefe_windowsprotectionstate_update.md)|[windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md)|Update the properties of a [windowsProtectionState](../resources/intune_devicefe_windowsprotectionstate.md) object.|

## Properties
|Property|Type|Description|
|---|---|---|
|id|String|The unique Identifier for the device protection status object. This is device id of the device|

## Relationships
None
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
  "id": "String (identifier)"
}
```



