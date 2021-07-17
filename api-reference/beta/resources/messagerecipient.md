---
title: "messageRecipient resource type"
description: "Represents a recipient of a message"
author: "rsuven"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# messageRecipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a recipient of a message.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Random id for this recipient (not a unique key).|
|recipientEmail|String|Recipient email address.|
|deliveryStatus|messageStatus|Message delivery status. Possible values are: `gettingStatus`, `pending`, `failed`, `delivered`, `expanded`, `quarantined`, `filteredAsSpam`, `unknownFutureValue`.|
|events|[messageEvent](../resources/messageevent.md) collection|details of events during delivery of a mail message to a recipient.|
|

### Message status types

| Message status | Description |
|------------|-------------|
| gettingStatus | The message is waiting for status update. |
| pending | Message delivery is underway or was deferred and is being retried. |
| failed | Message delivery was attempted and it failed or the message was filtered as spam or malware, or by transport rules. |
| delivered | The message was delivered to its destination. |
| expanded | There was no message delivery because the message was addressed to a distribution group and the membership of the distribution was expanded. |
| quarantined | The message was quarantined. |
| filteredAsSpam | The message was marked as spam. |
|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.messageRecipient",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messageRecipient",
  "id": "String (identifier)",
  "recipientEmail": "String",
  "deliveryStatus": "String",
  "events": [{"@odata.type": "microsoft.graph.messageEvent"}]
}
```
