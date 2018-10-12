# fileAttachment resource type

A file (such as a text file or Word document) attached to an event, message or post. The  **contentBytes** 
property contains the base64-encoded contents of the file.  

When creating a file attachment, include the following in the request body:

* `"@odata.type": "#microsoft.graph.fileAttachment"`
* The required properties **name** and **contentBytes**.

Derived from [attachment](attachment.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment_get.md) | [fileAttachment](fileattachment.md) |Read properties and relationships of fileAttachment object.|
|[Delete](../api/attachment_delete.md) | None |Delete fileAttachment object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentBytes|Binary|The base64-encoded contents of the file.|
|contentId|String|The ID of the attachment in the Exchange store.|
|contentLocation|String|The Uniform Resource Identifier (URI) that corresponds to the location of the content of the attachment.|
|contentType|String|The content type of the attachment.|
|id|String|The attachment ID.|
|isInline|Boolean|Set to true if this is an inline attachment.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified.|
|name|String|The name representing the text that is displayed below the icon representing the embedded attachment.This does not need to be the actual file name.|
|size|Int32|The size in bytes of the attachment.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.attachment",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.fileAttachment"
}-->

```json
{
  "contentBytes": "binary",
  "contentId": "string",
  "contentLocation": "string",
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "fileAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
