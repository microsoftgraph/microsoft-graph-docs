# keyCredential resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customKeyIdentifier|binary||
|endDate|[dateTimeOffset](datetimeoffset.md)||
|keyId|guid||
|startDate|[dateTimeOffset](datetimeoffset.md)||
|type|string||
|usage|string||
|value|binary||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.keycredential"
}-->

```json
{
  "customKeyIdentifier": "binary",
  "endDate": "String (timestamp)",
  "keyId": "guid",
  "startDate": "String (timestamp)",
  "type": "string",
  "usage": "string",
  "value": "binary"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "keyCredential resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->