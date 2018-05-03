# signInLocation resource type
Provides the city, state and country/region from where the sign-in happened.



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|String|Provides the city where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.|
|countryOrRegion|String|Provides the country code info (2 letter code) where the sign-in originated.  This is calculated using latitude/longitude information from the sign-in activity.|
|geoCoordinates|[geoCoordinates](geocoordinates.md)|Provides the latitude, longitude and altitude where the sign-in originated.|
|state|String|Provides the State where the sign-in originated. This is calculated using latitude/longitude information from the sign-in activity.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signInLocation"
}-->

```json
{
  "city": "String",
  "countryOrRegion": "String",
  "geoCoordinates": {"@odata.type": "microsoft.graph.geoCoordinates"},
  "state": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signInLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->