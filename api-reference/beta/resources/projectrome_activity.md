# activity resource type

Represents a single activity within an app - for example, a TV show, a document, or a current campaign in a video game. When a user engages with that activity, the engagement is captured as a [history item](projectrome_historyitem.md) that indicates the start and end time for that activity. As the user re-engages with that activity over time, multiple history items are recorded for a single user activity.

You can use activities in Microsoft Graph to enable users to get back to what they were doing in their app, across multiple devices. Activities that your app creates appear on all users' devices, and are exposed to users as deep links to specific content within your app. You can express specific content within your app as a destination that is showcased in Windows, and accessible on iOS and Android devices through Cortana notifications.

Because every app is different, it's up to you to understand the best way to map actions within your application to user activities that will appear in Cortana and Timeline. For example, games might create an activity for each campaign, document authoring apps might create an activity for each unique document, and line-of-business apps might create an activity for each workflow.

Your user activities will be showcased in Cortana and Windows Timeline user experiences, which are focused on increasing users' productivity and efficiency by helping them get back to content they worked on in the past.

## Methods

|Method | Return Type | Description|
|:------|:------------|:-----------|
|[Create or replace activity](../api/projectrome_put_activity.md) | [activity](projectrome_activity.md) |Creates or replaces an existing activity (upsert). The appActivityId needs to be URL-safe (all characters except for RFC 2396 unreserved characters must be converted to their hexadecimal representation), but the original appActivityId does not have to be URL-safe. |
|[Delete an activity](../api/projectrome_delete_activity.md) | No Content | Deletes the specified activity for that user from your app.|

## Properties

|Name | Type | Description|
|:----|:-----|:-----------|
|userTimezone | String | Optional. The timezone in which the user's device used to generate the activity was located at activity creation time; values supplied as Olson IDs in order to support cross-platform representation.|
|createdDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was created on the server. |
|lastModifiedDateTime | DateTimeOffset | Set by the server. DateTime in UTC when the object was modified on the server. |
|id | String | Server-generated ID used for URL addressing.|
|appActivityId | String | Required. The unique activity ID in the context of the app - supplied by caller and immutable thereafter.|
|activitySourceHost | String | Required. URL pointing to the JSON file which stores the cross-platform identity mapping for the application.|
|appDisplayName | String | Optional. Short text description of the app used to generate the activity for use in cases when the app is not installed on the user’s local device.|
|activationUrl | String | Required. URL used to launch the activity in the best native experience represented by the appId. Might launch a web-based app if no native app exists.|
|fallbackUrl | String | Optional. URL used to launch the activity in a web-based app, if available.|
|contentUrl | String | Optional. Used in the event the content can be rendered outside of a native or web-based app experience (for example, a pointer to an item in an RSS feed).|
|visualElements| [visualInfo](../resources/projectrome_visualinfo.md) | Required. The object containing information to render the activity in the UX.|
|contentInfo | Untyped JSON object | Optional. A custom piece of data - JSON-LD extensible description of content according to [schema.org](http://schema.org) syntax.|
|historyItems | [historyItem](../resources/projectrome_historyitem.md) collection | Optional. NavigationProperty/Containment; navigation property to the activity's historyItems.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "userTimezone",
    "appDisplayName",
    "fallbackUrl",
    "contentUrl",
    "contentInfo",
    "visualElements.attribution",
    "visualElements.description",
    "visualElements.backgroundColor",
    "visualElements.content"
  ],
  "@odata.type": "microsoft.graph.activity"
}-->

```json
{
    "appActivityId": "String",
    "activitySourceHost": "String (host name/domain/URL)",
    "userTimezone": "String",
    "appDisplayName": "String",
    "activationUrl": "String (URL)",
    "contentUrl": "String (URL)",
    "fallbackUrl": "String (URL)",
    "contentInfo": {
        // JSON object
    },
    "visualElements": {
        "attribution": {
            "iconUrl": "String (URL)",
            "alternativeText": "String",
            "addImageQuery": "boolean",
        },
        "description": "String",
        "backgroundColor": "String",
        "displayText": "String",
        "content": {
            // JSON object
        }
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "activity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
