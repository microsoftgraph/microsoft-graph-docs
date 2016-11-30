# omaSettingDateTime resource type

OMA Settings DateTime definition.

Inherits from [omaSetting](omaSetting.md)

### Properties
|Property|Type|Description|
|---|---|---|
|displayName|String|Display Name. Inherited from [omaSetting](omaSetting.md).|
|description|String|Description. Inherited from [omaSetting](omaSetting.md).|
|omaUri|String|OMA. Inherited from [omaSetting](omaSetting.md).|
|value|DateTimeOffset|Value.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.omaSettingDateTime"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.omaSettingDateTime",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "value": "String (timestamp)"
}
```

