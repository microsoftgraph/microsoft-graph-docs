#  resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Methods
|Method|Return Type|Description|
|---|---|---|
|[Get windowsProtectionState](../api/intune_devices_windowsprotectionstate_get.md)|[windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md)|Read properties and relationships of the [windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md) object.|
|[Update windowsProtectionState](../api/intune_devices_windowsprotectionstate_update.md)|[windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md)|Update the properties of a [windowsProtectionState](../resources/intune_devices_windowsprotectionstate.md) object.|

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



