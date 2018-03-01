# teamFunSettings resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Settings to configure use of Giphy, memes, and stickers in the [team](team.md).

## teamFunSettings Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowGiphy|Boolean|If set to true, enables Giphy use.|
|giphyContentRating|String (enum)|Giphy content rating. Possible values are: `moderate`, `strict`.|
|allowStickersAndMemes|Boolean|If set to true, enables users to include stickers and memes.|
|allowCustomMemes|Boolean|If set to true, enables users to include custom memes.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamFunSettings"
}-->

```json
{
  "allowGiphy": true,
  "giphyContentRating": "strict",
  "allowStickersAndMemes": true,
  "allowCustomMemes": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's funSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
