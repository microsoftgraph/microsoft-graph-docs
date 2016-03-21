# searchResult resource type

The **searchResult** resource indicates than an item is the response to a search.



### Properties
| Property         | Type     | Description                                                                                                                             |
|:----------------------|:---------|:----------------------------------------------------------------------------------------------------------------------------------------|
| onClickTelemetryUrl | String | A callback URL that is used to record telemetry information. The application should issue a GET on this URL if the user interacts with this item. |

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  "onClickTelemtryUrl"
  ],
  "@odata.type": "microsoft.graph.searchResult"
}-->

```json
{
  "onClickTelemetryUrl": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "searchResult resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
