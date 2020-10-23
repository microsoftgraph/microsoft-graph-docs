---
title: "outlookCategory resource type"
description: "Represents a category by which a user can group Outlook items such as messages and events. In Outlook, the user defines categories in a master list, and can apply one or more of these user-defined"
localization_priority: Normal
author: "svpsiva"
ms.prod: "outlook"
doc_type: resourcePageType
---

# outlookCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [outlooktask-deprecate-sharedfeature](../../includes/outlooktask-deprecate-sharedfeature.md)]

Represents a category by which a user can group Outlook items such as messages and events. In Outlook, the user defines categories in a master list, and can apply one or more of these user-defined
categories to an item. 

Using the REST API, you can [create](../api/outlookuser-post-mastercategories.md) and define categories in the master list of categories for a user. 
You can also [get this master list of categories](../api/outlookuser-list-mastercategories.md), [get a specific category](../api/outlookcategory-get.md), 
[update](../api/outlookcategory-update.md) the color associated with a category, or [delete](../api/outlookcategory-delete.md) a category. 
You can apply a category to an item by assigning the **displayName** property of the category to the **categories** collection of the item.
Resources that can be assigned categories include [contact](contact.md), [event](event.md), [message](message.md), [outlookTask](outlooktask.md), and [post](post.md).   

Each category is attributed by 2 properties: **displayName** and **color**. The **displayName** value must be unique in a user's master list. 
The **color** however does not have to be unique; multiple categories in the master list can be mapped to the same color. You can map up 
to 25 different colors to categories in a user's master list.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|A unique name that identifies a category in the user's mailbox. After a category is created, the name cannot be changed. Read-only.|
|color|String|A pre-set color constant that characterizes a category, and that is mapped to one of 25 predefined colors. See the note below. |

> **Note** The possible values for **color** are pre-set constants such as `None`, `preset0` and `preset1`. Each pre-set constant is further mapped to a color; the actual
color is dependent on the Outlook client that the categories are being displayed in. The following table shows the colors mapped to each pre-set constant for Outlook (desktop client). 


| Pre-set constant	| Color mapped to in Outlook |
|:---------------|:--------|
| None | No color mapped |
| Preset0 | Red |
| Preset1 | Orange |
| Preset2 | Brown |
| Preset3 | Yellow |
| Preset4 | Green |
| Preset5 | Teal |
| Preset6 | Olive |
| Preset7 | Blue |
| Preset8 | Purple |
| Preset9 | Cranberry |
| Preset10 | Steel |
| Preset11 | DarkSteel |
| Preset12 | Gray |
| Preset13 | DarkGray |
| Preset14 | Black |
| Preset15 | DarkRed |
| Preset16 | DarkOrange |
| Preset17 | DarkBrown |
| Preset18 | DarkYellow |
| Preset19 | DarkGreen |
| Preset20 | DarkTeal |
| Preset21 | DarkOlive |
| Preset22 | DarkBlue |
| Preset23 | DarkPurple |
| Preset24 | DarkCranberry |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.outlookCategory"
}-->

```json
{
  "color": "String",
  "displayName": "String"
}

```

## Methods
| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List categories](../api/outlookuser-list-mastercategories.md) | [outlookCategory](../resources/outlookcategory.md) collection |Get all the categories that have been defined for the user.|
|[Get category](../api/outlookcategory-get.md) | [outlookCategory](../resources/outlookcategory.md) |Get the properties and relationships of the specified **outlookCategory** object.|
|[Create](../api/outlookuser-post-mastercategories.md) | [outlookCategory](../resources/outlookcategory.md) |Create an **outlookCategory** object in the user's master list of categories.|
|[Update](../api/outlookcategory-update.md) | [outlookCategory](../resources/outlookcategory.md) |Update the writable property, **color**, of the specified **outlookCategory** object. |
|[Delete](../api/outlookcategory-delete.md) | None |Delete the specified **outlookCategory** object. |


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "outlookCategory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Warning: /api-reference/beta/resources/outlookcategory.md:\r\n      Failed to parse any rows out of table with headers: |Pre-set constant|Color mapped to in Outlook|"
  ]
}
-->
 


