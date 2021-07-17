---
title: "messageTrace resource type"
description: "Represents basic information about a message"
author: "rsuven"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# messageTrace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents basic information about a message.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get messageTraces](../api/messagetrace-get.md)|[messageTrace](../resources/messagetrace.md) collection|Get a list of the [messageTrace](../resources/messagetrace.md) objects and their properties.|
|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID for the message (the internal message id).|
|senderEmail|String|Sender email address.|
|receivedDateTime|DateTimeOffset|Message receive datetime in UTC.|
|messageId|String|The Message-ID header field of the message.|
|subject|String|Message subject.|
|size|Int32|Message length.|
|sourceIPAddress|String|The source IP address.|
|destinationIPAddress|String|The destination IP address.|
|recipients|[messageRecipient](../resources/messagerecipient.md) collection|Message recipients.|
|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.messageTrace",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.messageTrace",
  "id": "String (identifier)",
  "senderEmail": "String",
  "receivedDateTime": "String (timestamp)",
  "messageId": "String",
  "subject": "String",
  "size": "Integer",
  "sourceIPAddress": "String",
  "destinationIPAddress": "String",
  "recipients": [{"@odata.type": "microsoft.graph.messageRecipient"}]
}
```
