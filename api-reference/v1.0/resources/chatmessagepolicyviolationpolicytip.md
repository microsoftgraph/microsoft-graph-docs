---
title: "chatMessagePolicyViolationPolicyTip resource type"
description: "Represents properties of a policy tip on a chatMessagePolicyViolation object. Policy tips provide the sender with information about the policy violation."
author: "laujan"
doc_type: resourcePageType
localization_priority: Normal
ms.prod: "microsoft-teams"
---
# chatMessagePolicyTip resource type

Represents the properties of a policy tip on a [chatMessagePolicyViolation](chatmessagepolicyviolation.md) object. 
Policy tips provide the sender with information about the policy violation.
Policy tips are typically set by a data loss prevention (DLP) app which watches for messages that contain data that users aren't supposed to send.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|complianceUrl|string|The URL a user can visit to read about the data loss prevention policies for the organization. (ie, policies about what users shouldn't say in chats)|
|generalText|string|Explanatory text shown to the sender of the message.|
|matchedConditionDescriptions|string collection|The list of improper data in the message that was detected by the data loss prevention app. Each DLP app defines its own conditions, examples include "Credit Card Number" and "Social Security Number".|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "generalText"
  ],
  "@odata.type": "microsoft.graph.chatMessagePolicyViolationPolicyTip"
}-->

```json
{
  "complianceUrl": "string",
  "generalText": "string",
  "matchedConditionDescriptions": ["string 1", "string 2"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "policy violation policy tip resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
