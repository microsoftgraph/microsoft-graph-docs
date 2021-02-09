---
title: "attendeeBase resource type"
description: "The type of attendee."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "harini84"
---

# attendeeBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The type of attendee.

Derived from [recipient](recipient.md).

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendeeBase"
}-->

```json
{
  "type": "String",
  "emailAddress": {"@odata.type": "microsoft.graph.emailAddress"}
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|String| The type of attendee. Possible values are: `required`, `optional`, `resource`. Currently if the attendee is a person, [findMeetingTimes](../api/user-findmeetingtimes.md) always considers the person is of the `Required` type.|
|emailAddress|[emailAddress](emailaddress.md)|Includes the name and SMTP address of the attendee.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attendeeBase resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


