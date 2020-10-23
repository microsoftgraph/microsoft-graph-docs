---
title: "userPurpose resource type"
description: "Represents the user's recipient or mailbox type in Exchange Online."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "outlook"
author: "abheek-das"
---

# userPurpose resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The purpose of the mailbox. Used to differentiate a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online.


## Properties
|Property|Type|Description|
|:---------------|:--------|:----------|
|value|[mailboxRecipientType](#mailboxrecipienttype-values)|Represents the user's recipient or mailbox type in Exchange Online. Possible values are: `unknown`, `user`, `linked`, `shared`, `room`, `equipment`, and `others`. See the next section for more information.|

### mailboxRecipientType values
|Member|Description|
|:---------------|:--------|
|unknown|No information found about the mailbox.|
|user|A user account with a mailbox in the local forest.|
|linked|A mailbox linked to a user account in another forest.|
|shared|A mailbox shared by two or more user accounts.|
|room|A mailbox representing a conference room.|
|equipment|A mailbox representing a piece of equipment.|
|others|Mailbox found but user purpose is different from the ones specified above.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userPurpose"
}-->

```json
{
    "value": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "userPurpose resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


