# visualInfo resource type

A complex type for representing visual elements in the [activity](../resources/projectrome_activity.md) object.

Each user activity will be shown in Timeline as an Adaptive Card. App developers are encouraged to provide a custom Card which captures the essence of the activity which took place in your app. This is possible by providing a custom JSON card in the content property.

In addition to visual metadata with an Adaptive Card, app can specify content metadata – data that be used to build inferences on the user’s activity in order to offer new activities for future re-engagement. This is possible by using the activity's contentInfo property to provide a JSON object which leverages schema.org properties to describe the content.

If a custom card is not provided, a simple card will be generated using displayText and description properties. Custom cards are recommended to showcase the best content from within your app.

## Properties

|Name | Type | Description|
|:----|:------|:-----------|
|displayText | String | Rquired; short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)|
|description | String | Optional; longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)|
|backgroundColor | String | Optional; Background color used to render the activity in the UI - brand color for the application source of the activity|
|content | Untyped JSON object | Optional; custom piece of data - JSON object used to provide custom content to render the activity in the Windows Shell UI|
|attribution | [imageInfo](../resources/projectrome_imageinfo.md) | Optional; JSON object used to represent an icon which represents the application used to generate the activity|

## JSON Representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attribution",
    "description",
    "backgroundColor",
    "content"
  ],
  "@odata.type": "microsoft.graph.activity.visualinfo"
}-->

```json
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
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "visualinfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
