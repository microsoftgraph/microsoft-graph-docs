# historyItem resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a history item for an [activity](projectrome_activity.md) in an app. User activities represent a single destination within your app - for example, a TV show, a document, or a current campaign in a video game. When a user engages with that activity, the engagement is captured as a history item that indicates the start and end time for that activity. As the user re-engages with that activity over time, multiple history items are recorded for a single user activity.

When an app creates a session, a **historyItem** object should be added to the **activity** object to reflect the period of user engagement. Each time a user re-engages with an activity, a new **historyItem** is added to the activity to accrue user engagement.

## Methods

|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create or replace historyItem](../api/projectrome_put_historyitem.md) | [historyItem](projectrome_historyitem.md) | Creates or replaces an existing **historyItem** for that activity (upsert). The ID needs to be a GUID.|
|[Delete a historyItem](../api/projectrome_delete_historyitem.md) | No Content | Deletes the specified **historyItem** for that activity.|

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|status | EnumType | Set by the server. A status code used to identify valid objects. Values: active, updated, deleted, ignored.|
|userTimezone | String | Optional. The timezone in which the user's device used to generate the activity was located at activity creation time. Values supplied as Olson IDs in order to support cross-platform representation.|
|createdDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was created on the server.|
|lastModifiedDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was modified on the server.|
|id | String | Required. Client-set GUID for the **historyItem** object.|
|startedDateTime | DateTimeOffset | Required. UTC DateTime when the **historyItem** (activity session) was started. Required for timeline history.|
|lastActiveDateTime | DateTimeOffset | Optional. UTC DateTime when the **historyItem** (activity session) was last understood as active or finished - if null, **historyItem** status should be Ongoing.|
|expirationDateTime | DateTimeOffset | Optional. UTC DateTime when the **historyItem** will undergo hard-delete. Can be set by the client.|
|activeDurationSeconds | int | Optional. The duration of active user engagement. if not supplied, this is calculated from the **startedDateTime** and **lastActiveDateTime**.|

## Relationships

|Relationship | Type | Description|
|:------------|:-----|:-----------|
|activity| [activity](../resources/projectrome_activity.md) | Optional. NavigationProperty/Containment; navigation property to the associated activity.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userTimezone",
    "lastActiveDateTime",
    "activeDurationSeconds"
  ],
  "@odata.type": "microsoft.graph.historyItem"
}-->

```json
{
    "status": "String (EnumType)",
    "createdDateTime": "DateTimeOffset",
    "lastModifiedDateTime": "DateTimeOffset",
    "id": "String",
    "expirationDateTime": "DateTimeOffset",
    "startedDateTime": "DateTimeOffset",
    "userTimezone": "String",
    "lastActiveDateTime": "DateTimeOffset",
    "activeDurationSeconds":"int"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "historyitem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
