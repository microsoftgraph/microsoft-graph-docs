---
title: "outOfOfficeSettings resource type"
description: "Represents phone access information for an online meeting."
author: "elvinyang-msft"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# outOfOfficeSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the out of office settings related to the [presence](presence.md) of a user.

## Properties

| Property            | Type    | Description                                                                    |
|:--------------------|:--------|:-------------------------------------------------------------------------------|
| message           | String  | The out of office message that the user configured on Outlook client (Automatic Replies (Out of Office)) or the Teams client (Schedule out of office). |
| isOutOfOffice      | Boolean  | True if either:</br><ul><li>It is currently in the out of office time window configured on the Outlook or Teams client.</li><li>There is currently an event on the user's calendar that's marked as Show as Out of Office</li></ul></br>Otherwise, false. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.outOfOfficeSettings"
}-->
```json
{
  "message": "String",
  "isOutOfOffice": "Boolean"
}
```
