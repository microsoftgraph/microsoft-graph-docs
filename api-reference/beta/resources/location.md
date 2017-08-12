# Location resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents location information of an event.


## Properties
| Property  | Type   | Description                                                     |
|:----------|:-------|:----------------------------------------------------------------|
| address | [physicalAddress](physicalAddress.md) |The street address of the location. |
| coordinates | [outlookGeoCoordinates](outlookGeoCoordinates.md) | The geographic coordinates and elevation of the location. |
| displayName  | String | The name associated with the location.                       |
| locationEmailAddress | String | Optional email address of the location. |
| locationUri | String | Optional URI representing the location. |
| locationType | String | The type of location. Possible values are: `default`, `conferenceRoom`, `homeAddress`, `businessAddress`,`geoCoordinates`, `streetAddress`, `hotel`, `restaurant`, `localBusiness`, `postalAddress`. |
| uniqueId | String | A unique string that identifies the location. In particular, the string is a GUID if this identifier is of the `locationStore` type. The string is an email address if this identifier is of the `directory` type. The string is an URI if this identifier is of the `bing` type. |
| uniqueIdType | String | The type of the unique location ID. Possible values are: `unknown`, `locationStore`, `directory`, `private`,`bing`. |


## JSON representation

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
  "locationEmailAddress": "string",
  "locationUri": "string",
  "locationType": "string",
  "uniqueId": "string",
  "uniqueIdType": "string"
}

```

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "location resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->