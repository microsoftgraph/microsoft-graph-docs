# mediaContentRatingUnitedKingdom resource type

Not yet documented
### Properties
|Property|Type|Description|
|---|---|---|
|movieRating|String|Movies rating selected for United Kingdom Possible values are: `allAllowed`, `allBlocked`, `general`, `universalChildren`, `parentalGuidance`, `agesAbove12Video`, `agesAbove12Cinema`, `agesAbove15`, `adults`.|
|tvRating|String|TV rating selected for United Kingdom Possible values are: `allAllowed`, `allBlocked`, `caution`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mediaContentRatingUnitedKingdom"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mediaContentRatingUnitedKingdom",
  "movieRating": "String",
  "tvRating": "String"
}
```



