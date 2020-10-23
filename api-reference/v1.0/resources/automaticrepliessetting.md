---
title: "automaticRepliesSetting resource type"
description: "Configuration settings to automatically notify the sender of an incoming email with a message from the "
localization_priority: Normal
author: "svpsiva"
ms.prod: ""
doc_type: resourcePageType
---

# automaticRepliesSetting resource type

Namespace: microsoft.graph

Configuration settings to automatically notify the sender of an incoming email with a message from the
signed-in user. For example, an automatic reply to notify that the signed-in user is unavailable to
respond to emails.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|externalAudience|externalAudienceScope| The set of audience external to the signed-in user's organization who will receive the **ExternalReplyMessage**, if **Status** is `AlwaysEnabled` or `Scheduled`. The possible values are: `none`, `contactsOnly`, `all`.|
|externalReplyMessage|string|The automatic reply to send to the specified external audience, if **Status** is `AlwaysEnabled` or `Scheduled`.|
|internalReplyMessage|string|The automatic reply to send to the audience internal to the signed-in user's organization, if **Status** is `AlwaysEnabled` or `Scheduled`. |
|scheduledEndDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date and time that automatic replies are set to end, if **Status** is set to `Scheduled`. |
|scheduledStartDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date and time that automatic replies are set to begin, if **Status** is set to `Scheduled`.|
|status|automaticRepliesStatus|Configurations status for automatic replies. The possible values are: `disabled`, `alwaysEnabled`, `scheduled`.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.automaticRepliesSetting"
}-->

```json
{
  "externalAudience": "String",
  "externalReplyMessage": "string",
  "internalReplyMessage": "string",
  "scheduledEndDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "scheduledStartDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "automaticRepliesSetting resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

