# omaSettingStringXml resource type

OMA Settings StringXML definition.

Inherits from [omaSetting](../resources/omaSetting.md)

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Display Name. Inherited from [omaSetting](../resources/omaSetting.md)|
|description|String|Description. Inherited from [omaSetting](../resources/omaSetting.md)|
|omaUri|String|OMA. Inherited from [omaSetting](../resources/omaSetting.md)|
|fileName|String|File name associated with the Value property (*.xml).|
|value|Binary|Value. (UTF8 encoded byte array)|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.omaSettingStringXml"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.omaSettingStringXml",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "fileName": "String",
  "value": "binary"
}
```

