# keyValuePair resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Generic type for string key value pairs.
## Properties
|Property|Type|Description|
|---|---|---|
|key|String|Name for this key-value pair|
|value|String|Value for this key-value pair|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.keyValuePair"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.keyValuePair",
  "key": "String",
  "value": "String"
}
```



