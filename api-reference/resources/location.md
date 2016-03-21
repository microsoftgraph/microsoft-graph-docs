# location resource type

Represents location information of an event.


### Properties
| Property  | Type   | Description                                                     |
|:----------|:-------|:----------------------------------------------------------------|
| address | [physicalAddress](physicalAddress.md) |The street address of the location. |
| coordinates | [outlookGeoCoordinates](outlookGeoCoordinates.md) |The geographic coordinates, elevation, and their degree of accuracy for a physical location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location.              |


### JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.location"
}-->
```json
{
  "address": {"@odata.type": "microsoft.graph.physicalAddress"},
  "coordinates": {"@odata.type": "microsoft.graph.outlookGeoCoordinates"},  
  "displayName": "string",
  "locationEmailAddress": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "location resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->