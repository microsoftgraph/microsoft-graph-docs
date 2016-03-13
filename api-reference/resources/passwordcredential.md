# passwordCredential resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customKeyIdentifier|binary||
|endDate|[dateTimeOffset](datetimeoffset.md)||
|keyId|guid||
|startDate|[dateTimeOffset](datetimeoffset.md)||
|value|string||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordcredential"
}-->

```json
{
  "customKeyIdentifier": "binary",
  "endDate": "String (timestamp)",
  "keyId": "guid",
  "startDate": "String (timestamp)",
  "value": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordCredential resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->