# omaSettingBase64 resource type

OMA Settings Base64 definition.

Inherits from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Display Name. Inherited from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)|
|description|String|Description. Inherited from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)|
|omaUri|String|OMA. Inherited from [omaSetting](../resources/intune_deviceconfig_omaSetting.md)|
|fileName|String|File name associated with the Value property (*.cer | *.crt ).|
|value|String|Value. (Base64 encoded string)|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.omaSettingBase64"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.omaSettingBase64",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "fileName": "String",
  "value": "String"
}
```


