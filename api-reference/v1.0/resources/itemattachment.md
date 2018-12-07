# itemAttachment resource type

A contact, event, or message that's attached to another event, message, or post.  

Derived from [attachment](attachment.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment_get.md) | [itemAttachment](itemattachment.md) |Read properties and relationships of itemAttachment object.|
|[Delete](../api/attachment_delete.md) | None |Delete itemAttachment object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String|The content type of the attachment.|
|id|String| The attachment ID.|
|isInline|Boolean|Set to true if the attachment is inline, such as an embedded image within the body of the item.|
|lastModifiedDateTime|DateTimeOffset|The last time and date that the attachment was modified.|
|name|String|The display name of the attachment.|
|size|Int32|The size in bytes of the attachment.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|item|[OutlookItem](outlookitem.md)|The attached message or event. Navigation property.|

## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "item"
  ],
  "baseType": "microsoft.graph.attachment",
  "@odata.type": "microsoft.graph.itemAttachment",
  "@odata.annotations": [
    {
      "property": "item",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    }
  ]
}-->

```json
{
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": 1024,
  "item": { "@odata.type": "microsoft.graph.outlookItem" }
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
