# physicalAddress resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|string||
|countryOrRegion|string||
|postOfficeBox|string||
|postalCode|string||
|state|string||
|street|string||
|type|String| Possible values are: `unknown`, `home`, `business`, `other`.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.physicaladdress"
}-->

```json
{
  "city": "string",
  "countryOrRegion": "string",
  "postOfficeBox": "string",
  "postalCode": "string",
  "state": "string",
  "street": "string",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "physicalAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->