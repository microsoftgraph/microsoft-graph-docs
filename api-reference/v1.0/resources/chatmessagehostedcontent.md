---
title: "chatMessageHostedContent resource type"
description: "A content hosted in a chat message"
localization_priority: Normal
author: "clearab"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# chatMessageHostedContent resource type

Namespace: microsoft.graph

Represents Teams content hosted in a chat message, such as images or code snippets.
[File attachments](chatmessageattachment.md) are not hosted content;
they are stored in SharePoint or OneDrive.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List content hosted in chat message](../api/chatmessage-list-hostedcontents.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) | Retrieve the collection of **chatMessageHostedContent** for a message. |
| [Get content hosted in chat message](../api/chatmessagehostedcontent-get.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) | Read the properties and relationships of a **chatMessageHostedContent** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id            |String       | Represents the chat message hosted content identifier. Read-only. |
|contentBytes  |Edm.Binary   | When posting new chat message hosted content, represents the bytes of the payload. These are represented as a base64Encoded string. Write-only. |
|contentType   |String       | When posting new chat message hosted content, represents the type of content, such as image/png. Write-only. |

### Instance attributes

Instance attributes are properties with special behaviors.
These properties are temporary and either define behavior the service should perform or provide short-term property values, like a download URL for an item that expires.

| Property name                     | Type   | Description
|:----------------------------------|:-------|:--------------------------------
| @microsoft.graph.temporaryId      | string | Represents the temporaryId for the hosted content while posting a message to refer to the hosted content in [chatMessage](chatmessage.md) resource being sent. Write-only. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.chatMessageHostedContent",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "@microsoft.graph.temporaryId": "String (identifier)",
  "id": "String (identifier)",
  "contentBytes": "String (binary)",
  "contentType": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessageHostedContent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


