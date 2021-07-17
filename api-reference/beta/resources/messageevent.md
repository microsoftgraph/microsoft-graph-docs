---
title: "messageEvent resource type"
description: "Represents details of an event during delivery of a mail message to a recipient"
author: "rsuven"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# messageEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details of an event during delivery of a mail message to a recipient.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Random id for this event (not a unique key).|
|dateTime|DateTimeOffset|Time of the event in UTC.|
|eventType|messageEventType|Event type. Possible values are: `received`, `sent`, `delivered`, `failed`, `processingFailed`, `distributionGroupExpanded`, `submitted`, `delayed`, `redirected`, `resolved`, `dropped`, `recipientsAdded`, `malwareDetected`, `malwareDetectedInMessage`, `malwareDetectedInAttachment`, `ttZapped`, `ttDelivered`, `spamDetected`, `transportRuleTriggered`, `dlpRuleTriggered`, `journaled`, `unknownFutureValue`.|
|description|String|Detailed information on the event.|
|

### Message event types

| Event type | Description |
|------------|-------------|
| received | Message was received by the transport service. |
| sent | Message was sent between transport services. |
| delivered | Message was delivered to a local mailbox. |
| failed | Message delivery failed. A non-delivery report notification was sent. |
| processingFailed | The message can't be delivered or returned. |
| distributionGroupExpanded | A distribution group was expanded. |
| submitted | The Mailbox Transport Submission service successfully transmitted the message to the Transport service. |
| delayed | Message delivery was delayed. |
| redirected | Message was redirected to an alternative recipient after an Active Directory lookup. Redirect means the message was sent to a different recipient (either a redirection rule or a forwarding address). |
| resolved | Message's recipients were resolved to a different email address after an Active Directory lookup. Resolve means the message was sent to a proxy address and we rewrote that address to the user's primary address. E.g. if a user was sent to a mail contact, we updated the address to be their actual external email address. |
| dropped | Message was dropped without a delivery status notification (also known as a DSN), bounce message, or non-delivery report (NDR). For example, spam messages that were silently dropped without an NDR. |
| recipientsAdded | Recipients added as part of message delivery. |
| malwareDetected | Malware detected in the message. This will show as a failed message delivery with a Malware event. The Malware event contains information about which malware signature matched and the location of the malware. |
| malwareDetectedInMessage | Advanced Threat Protection detection of malware in message. |
| malwareDetectedInAttachment | Advanced Threat Protection detection of malware in attachments.  |
| ttZapped | Zero-Hour Auto Purge (ZAP) event. This implies the message has time traveled and verdict recharacterized to remove from mailbox. |
| ttDelivered | Dynamic Email delivery, message delivered as part of time travel. |
| spamDetected | The message has been characterized as spam. |
| transportRuleTriggered | A transport rule event occurred. |
| dlpRuleTriggered | A Data Loss Prevetion (DLP) policy rule triggered. |
| journaled | This event indicates the message was journaled via a journaling rule. Message journaling creates a copy and sends it to an alternate mailbox. |  

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.messageEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messageEvent",
  "id": "String (identifier)",
  "dateTime": "String (timestamp)",
  "eventType": "String",
  "description": "String"
}
```
