# referenceAttachment resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A link to a folder or file (such as a text file or Word document) on a OneDrive for Business cloud drive, or other supported storage locations, attached to 
an [event](../resources/event.md), [message](../resources/message.md), [Outlook task](../resources/outlooktask.md), or [post](../resources/post.md) .

Derived from [attachment](attachment.md).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get](../api/attachment_get.md) | [referenceAttachment](referenceattachment.md) |Read properties and relationships of referenceAttachment object.|
|[Delete](../api/attachment_delete.md) | None |Delete referenceAttachment object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String|The content type of the attachment. Optional.|
|id|String|The attachment ID.  Read-only.|
|isFolder|Boolean|Specifies whether the attachment is a link to a folder. Must set this to true if **sourceUrl** is a link to a folder. Optional.|
|isInline|Boolean|Set to true if the attachment appears inline in the body of the embedding object. Optional.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the attachment was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Optional.|
|name|String|The text that is displayed below the icon representing the embedded attachment. This does not need to be the actual file name. Required.|
|permission|ReferenceAttachmentPermissions|Specifies the permissions granted for the attachment by the type of provider in **providerType**. Possible values are: `other`, `view`, `edit`, `anonymousView`, `anonymousEdit`, `organizationView`, `organizationEdit`. Optional.|
|previewUrl|String|Applies to only a reference attachment of an image - URL to get a preview image. Use **thumbnailUrl** and **previewUrl** only when **sourceUrl** identifies an image file. Optional.|
|providerType|ReferenceAttachmentProviders|The type of provider that supports an attachment of this contentType. Possible values are: `other`, `oneDriveBusiness`, `oneDriveConsumer`, `dropbox`. Optional.|
|size|Int32|The size of the metadata in bytes that is stored on the message for the reference attachment. This value does not indicate the size of the actual file. Optional.|
|sourceUrl|String|URL to get the attachment content. If this is a URL to a folder, then for the folder to be displayed correctly in Outlook or Outlook on the web, set **isFolder** to true. Required.|
|thumbnailUrl|String|Applies to only a reference attachment of an image - URL to get a thumbnail image. Use **thumbnailUrl** and **previewUrl** only when **sourceUrl** identifies an image file. Optional.|

## Relationships
None



## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.referenceAttachment"
}-->

```json
{
  "contentType": "string",
  "id": "string (identifier)",
  "isFolder": true,
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "permission": "string",
  "previewUrl": "string",
  "providerType": "string",
  "size": 1024,
  "sourceUrl": "string",
  "thumbnailUrl": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "referenceAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
