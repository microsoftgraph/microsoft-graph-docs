---
title: "ticketInfo resource type"
description: "The object that represents ticket information related to role assignment requests"
author: "shauliu"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# ticketInfo resource type

Namespace: microsoft.graph

The object that represents ticket information related to role assignment requests

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ticketNumber|String|Ticket number meta data|
|ticketSystem|String|Ticket system meta data|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ticketInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ticketInfo",
  "ticketNumber": "String",
  "ticketSystem": "String"
}
```

