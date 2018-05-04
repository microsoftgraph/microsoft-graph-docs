# physicalAddress resource type

Represents the street address of a resource such as a contact or event.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|String|The type of address. Possible values are: `unknown`, `home`, `business`, `other`.|
|postOfficeBox|String|The post office box number.|
|city|String|The city.|
|countryOrRegion|String|The country or region. It's a free-format string value, for example, "United States".|
|postalCode|String|The postal code.|
|state|String|The state.|
|street|String|The street.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.physicalAddress"
}-->

```json
{
  "type": "string",
  "postOfficeBox": "string",
  "city": "string",
  "countryOrRegion": "string",
  "postalCode": "string",
  "state": "string",
  "street": "string"
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
