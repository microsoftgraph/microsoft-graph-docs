# teamsAppDefinition resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The details of one version of a [teamsApp](teamsapp.md).

## Properties
| Property            | Type     | Description |
|:------------------- |:-------- |:----------- |
| id                  | string   | A unique id (not the teams appid). |
| teamsAppId          | string   | The id from the Teams App manifest. |
| displayName         | string   | The name of the app provided by the app developer. |
| version             | string   | The version number of the application. |

## JSON representation
```json
{
  "id": "0d0e31ca-59a5-31a6-8d87-12429a173d34",
  "displayName": "Test App",
  "version": "1.0.0",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

