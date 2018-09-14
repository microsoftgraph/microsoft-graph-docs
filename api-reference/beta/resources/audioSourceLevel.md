# AudioSourceLevel resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Level configuration for other sources.

## Properties

| Property               | Type    | Description                                                                                         |
| :--------------------- | :------ | :---------------------------------------------------------------------------------------------------|
| duckOthers             | Boolean | Enables this source to duck other sources while active. If set to true, ducking level has to be set.|
| level                  | Int64   | Ducking level of the source if `duckOthers` is set to `true`.                                     |
| participant            | String  | The source participant audio stream.                                                                |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.audioSourceLevel"
}-->
```json
{
  "duckOthers": true,
  "level": 1024,
  "participant": "String"
}
```

## Example - Listen to only one participant

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.audioSourceLevel"
}-->
```json
{
  "duckOthers": true,
  "level": 100,
  "participant": "8A34A46B3D174ADC8DCEDC4E7D572698"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "audioSourceLevel resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
