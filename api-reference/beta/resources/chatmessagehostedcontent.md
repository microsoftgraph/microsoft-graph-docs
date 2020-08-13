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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Teams content hosted in a chat message, such as images or code snippets.
[File attachments](chatmessageattachment.md) are not hosted content;
they are stored in SharePoint or OneDrive.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List chatMessageHostedContent](../api/chatmessage-list-chatmessagehostedcontents.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) | Retrieve the list of **chatMessageHostedContent** for a message. |
| [Get chatMessageHostedContent](../api/chatmessagehostedcontent-get.md) | [chatMessageHostedContent](chatmessagehostedcontent.md) | Read the properties and relationships of a **chatMessageHostedContent** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id            |String       | Read-only. Represents the chat message hosted content identifier.|
|contentBytes  |Edm.Binary   | Write-only. When posting new chat message hosted content, represents the bytes of the payload. These are represented as a base64Encoded string.|
|contentType   |String       | Write-only. When posting new chat message hosted content, represents the type of content, such as image/png.|

### Instance attributes

Instance attributes are properties with special behaviors.
These properties are temporary and either define behavior the service should perform or provide short-term property values, like a download URL for an item that expires.

| Property name                     | Type   | Description
|:----------------------------------|:-------|:--------------------------------
| @microsoft.graph.temporaryId      | string | Write-only. Represents the temporaryId for the hosted content while posting a message to refer to the hosted content in **chatMessage** resource being sent.|

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
  "contentType": "String",
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
