# omaSettingString resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

OMA Settings String definition.

Inherits from [omaSetting](../resources/intune_deviceconfig_omasetting.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display Name. Inherited from [omaSetting](../resources/intune_deviceconfig_omasetting.md)|
|description|String|Description. Inherited from [omaSetting](../resources/intune_deviceconfig_omasetting.md)|
|omaUri|String|OMA. Inherited from [omaSetting](../resources/intune_deviceconfig_omasetting.md)|
|value|String|Value.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "baseType": "microsoft.graph.omaSetting",
  "@odata.type": "microsoft.graph.omaSettingString"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.omaSettingString",
  "displayName": "String",
  "description": "String",
  "omaUri": "String",
  "value": "String"
}
```



