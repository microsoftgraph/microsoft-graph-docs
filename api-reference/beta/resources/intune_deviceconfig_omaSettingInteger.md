# omaSettingInteger resource type

OMA Settings Integer definition.

Inherits from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Display Name. Inherited from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)|
|description|String|Description. Inherited from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)|
|omaUri|String|OMA. Inherited from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)|
|value|Int32|Value.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.omaSettingInteger"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.omaSettingInteger",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "value": 1024
}
```


