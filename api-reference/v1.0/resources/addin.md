---
title: "addIn resource type"
description: "Here is a JSON representation of the resource."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sureshja"
---

# addIn resource type

Namespace: microsoft.graph

Defines custom behavior that a consuming service can use to call an app in specific contexts. For example, applications that can render file streams [may configure addIns](/onedrive/developer/file-handlers/?view=odsp-graph-online) for its "FileHandler" functionality. This will let services like Microsoft 365 call the application in the context of a document the user is working on.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|guid||
|properties|[keyValue](keyvalue.md) collection||
|type|string||

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.addIn"
}-->

```json
{
  "id": "guid",
  "properties": [{"@odata.type": "microsoft.graph.keyValue"}],
  "type": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "addIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

