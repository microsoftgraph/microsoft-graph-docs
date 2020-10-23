---
title: "messageRuleActions resource type"
description: "Represents the set of actions that are available to a rule."
author: "svpsiva"
localization_priority: Normal
ms.prod: "outlook"
doc_type: resourcePageType
---

# messageRuleActions resource type

Namespace: microsoft.graph


Represents the set of actions that are available to a rule.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| assignCategories | String collection | A list of categories to be assigned to a message. |
| copyToFolder | String | The ID of a folder that a message is to be copied to. |
| delete | Boolean | Indicates whether a message should be moved to the Deleted Items folder. |
| forwardAsAttachmentTo | [recipient](recipient.md) collection | The email addresses of the recipients to which a message should be forwarded as an attachment. |
| forwardTo | [recipient](recipient.md) collection | The email addresses of the recipients to which a message should be forwarded. |
| markAsRead | Boolean | Indicates whether a message should be marked as read. |
| markImportance | importance | Sets the importance of the message, which can be: `low`, `normal`, `high`. |
| moveToFolder |  String| The ID of the folder that a message will be moved to. |
| permanentDelete | Boolean | Indicates whether a message should be permanently deleted and not saved to the Deleted Items folder. |
| redirectTo | [recipient](recipient.md) collection | The email addresses to which a message should be redirected. |
| stopProcessingRules | Boolean | Indicates whether subsequent rules should be evaluated. |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
   ],
  "@odata.type": "microsoft.graph.messageRuleActions"
}-->

```json
{
  "assignCategories": ["String"],
  "copyToFolder": "String",
  "delete": "Boolean",
  "forwardAsAttachmentTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "forwardTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "markAsRead": "Boolean",
  "markImportance": "String",
  "moveToFolder": "String",
  "permanentDelete": "Boolean",
  "redirectTo": [{"@odata.type": "microsoft.graph.recipient"}],
  "stopProcessingRules": "Boolean"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "messageRuleActions resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

