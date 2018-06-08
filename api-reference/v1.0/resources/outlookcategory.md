# outlookCategory resource type


Represents a category by which a user can group Outlook items such as messages and events. The user defines categories in a master list, and can apply one or more of these user-defined
categories to an item. 

Using the REST API, you can [create](../api/outlookuser_post_mastercategories.md) and define categories in the master list of categories for a user. 
You can also [get this master list of categories](../api/outlookuser_list_mastercategories.md), [get a specific category](../api/outlookcategory_get.md), 
[update](../api/outlookcategory_update.md) the color associated with a category, or [delete](../api/outlookcategory_delete.md) a category. 
You can apply a category to an item by assigning the **displayName** property of the category to the **categories** collection of the item.
Resources that can be assigned categories include [contact](contact.md), [event](event.md), [message](message.md), and [post](post.md).   

Each category is attributed by 2 properties: **displayName** and **color**. The **displayName** value must be unique in a user's master list. 
The **color** however does not have to be unique; multiple categories in the master list can be mapped to the same color. You can map up 
to 25 different colors to categories in a user's master list.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|A unique name that identifies a category in the user's mailbox. After a category is created, the name cannot be changed. Read-only.|
|color|categoryColor|A pre-set color constant that characterizes a category, and that is mapped to one of 25 predefined colors. See the note below. |

> **Note** The possible values for **color** are pre-set constants such as `None`, `preset0` and `preset1`. Each pre-set constant is further mapped to a color; the actual
color is dependent on the Outlook client that the categories are being displayed in. The following table shows the colors mapped to each pre-set constant for Outlook (desktop client). 

### categoryColor values

| Member   |Value    | Description
|:---------|:--------|:-------------------
| none     | -1      | No color mapped
| preset0  | 0       | Red
| preset1  | 1       | Orange
| preset2  | 2       | Brown
| preset3  | 3       | Yellow
| preset4  | 4       | Green
| preset5  | 5       | Teal
| preset6  | 6       | Olive
| preset7  | 7       | Blue
| preset8  | 8       | Purple
| preset9  | 9       | Cranberry
| preset10 | 10      | Steel
| preset11 | 11      | DarkSteel
| preset12 | 12      | Gray
| preset13 | 13      | DarkGray
| preset14 | 14      | Black
| preset15 | 15      | DarkRed
| preset16 | 16      | DarkOrange
| preset17 | 17      | DarkBrown
| preset18 | 18      | DarkYellow
| preset19 | 19      | DarkGreen
| preset20 | 20      | DarkTeal
| preset21 | 21      | DarkOlive
| preset22 | 22      | DarkBlue
| preset23 | 23      | DarkPurple
| preset24 | 24      | DarkCranberry

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
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
|[List categories](../api/outlookuser_list_mastercategories.md) | [outlookCategory](../resources/outlookcategory.md) collection |Get all the categories that have been defined for the user.|
|[Get category](../api/outlookcategory_get.md) | [outlookCategory](../resources/outlookcategory.md) |Get the properties and relationships of the specified **outlookCategory** object.|
|[Create](../api/outlookuser_post_mastercategories.md) | [outlookCategory](../resources/outlookcategory.md) |Create an **outlookCategory** object in the user's master list of categories.|
|[Update](../api/outlookcategory_update.md) | [outlookCategory](../resources/outlookcategory.md) |Update the writable property, **color**, of the specified **outlookCategory** object. |
|[Delete](../api/outlookcategory_delete.md) | None |Delete the specified **outlookCategory** object. |


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "outlookCategory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
 