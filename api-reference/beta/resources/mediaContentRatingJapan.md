# mediaContentRatingJapan resource type

Not yet documented
### Properties
|Property|Type|Description|
|---|---|---|
|movieRating|String|Movies rating selected for Japan Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `agesAbove15`, `agesAbove18`.|
|tvRating|String|TV rating selected for Japan Possible values are: `allAllowed`, `allBlocked`, `explicitAllowed`.|

### Relationships
None
### JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mediaContentRatingJapan"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.mediaContentRatingJapan",
  "movieRating": "String",
  "tvRating": "String"
}
```


