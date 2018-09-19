# Application resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## Methods

| Method         | Return Type | Description |
|:---------------|:--------|:----------|
|[Create call](../api/application_post_calls.md)|[call](call.md)|Create a new call by posting to the calls collection.|

## Properties

| Property       | Type    | Description                 |
|:---------------|:--------|:----------------------------|
|id              |String   |Read-only. Server generated. |

## Relationships

| Relationship   | Type                                       |Description         |
|:---------------|:-------------------------------------------|:-------------------|
|calls           |[call](call.md) collection                  |Read-only. Nullable.|
|onlineMeetings  |[onlineMeeting](onlineMeeting.md) collection|Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.application"
}-->
```json
{
  "id": "String (identifier)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "application resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
