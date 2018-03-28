# mediaContentRatingJapan resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Properties
|Property|Type|Description|
|:---|:---|:---|
|movieRating|ratingJapanMoviesType|Movies rating selected for Japan Possible values are: `allAllowed`, `allBlocked`, `general`, `parentalGuidance`, `agesAbove15`, `agesAbove18`.|
|tvRating|ratingJapanTelevisionType|TV rating selected for Japan Possible values are: `allAllowed`, `allBlocked`, `explicitAllowed`.|

### ratingJapanTelevisionType values

| Value
|:-------------------------
| allAllowed
| allBlocked
| explicitAllowed


### ratingJapanMoviesType values

| Value
|:-------------------------
| allAllowed
| allBlocked
| general
| parentalGuidance
| agesAbove15
| agesAbove18


## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mediaContentRatingJapan"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mediaContentRatingJapan",
  "movieRating": "String",
  "tvRating": "String"
}
```



