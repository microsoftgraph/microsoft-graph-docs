# mediaContentRatingNewZealand resource type

Not yet documented
### Properties
|Property|Type|Description|
|---|---|---|
|movieRating|String|Movies rating selected for New Zealand Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `mature`, `agesAbove13`, `agesAbove15`, `agesAbove16`, `agesAbove18`, `restricted`, `agesAbove16Restricted`.|
|tvRating|String|TV rating selected for New Zealand Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `adults`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mediaContentRatingNewZealand"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mediaContentRatingNewZealand",
  "movieRating": "String",
  "tvRating": "String"
}
```



