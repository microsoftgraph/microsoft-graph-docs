---
title: "visualInfo resource type"
description: "A complex type for representing the **visualElements** property in the activity object."
localization_priority: Normal
ms.prod: "project-rome"
doc_type: resourcePageType
author: "ailae"
---

# visualInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type for representing the **visualElements** property in the [activity](../resources/projectrome-activity.md) object.

Each user activity will be shown in Timeline as an Adaptive Card. App developers are encouraged to provide a custom Card which captures the essence of the activity which took place in your app. This is possible by providing a custom JSON card in the content property.

In addition to visual metadata with an Adaptive Card, app can specify content metadata – data that be used to build inferences on the user’s activity in order to offer new activities for future re-engagement. This is possible by using the activity's contentInfo property to provide a JSON object which leverages schema.org properties to describe the content.

If a custom card is not provided, a simple card will be generated using displayText and description properties. Custom cards are recommended to showcase the best content from within your app.

## Properties

|Name | Type | Description|
|:----|:------|:-----------|
|displayText | String | Required. Short text description of the user's unique activity (for example, document name in cases where an activity refers to document creation)|
|description | String | Optional. Longer text description of the user's unique activity (example: document name, first sentence, and/or metadata)|
|backgroundColor | String | Optional. Background color used to render the activity in the UI - brand color for the application source of the activity. Must be a valid hex color|
|content | Untyped JSON object | Optional. Custom piece of data - JSON object used to provide custom content to render the activity in the Windows Shell UI|
|attribution | [imageInfo](../resources/projectrome-imageinfo.md) | Optional. JSON object used to represent an icon which represents the application used to generate the activity|

## JSON Representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "attribution",
    "description",
    "backgroundColor",
    "content"
  ],
  "@odata.type": "microsoft.graph.visualInfo"
}-->

```json
{
    "@data.type": "microsoft.graph.visualInfo",
    "attribution": {
        "@odata.type": "microsoft.graph.imageInfo",
        "iconUrl": "String (URL)",
        "alternateText": "String",
        "addImageQuery": "boolean"
    },
    "description": "String",
    "backgroundColor": "String",
    "displayText": "String",
    "content": {
        "@data.type": "microsoft.graph.Json"
    }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2017-06-07 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "visualinfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


