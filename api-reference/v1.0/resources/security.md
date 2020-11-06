---
title: "security resource type"
description: "The security resource is the entry point for the Security object model. It returns a singleton security resource. It doesn't contain any usable properties."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# security resource type

Namespace: microsoft.graph

The security resource is the entry point for the Security object model. It returns a singleton security resource. It doesn't contain any usable properties.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List alerts](../api/alert-list.md) | [alert](alert.md) collection | Get a alert object collection. |
| [get alerts](../api/alert-get.md) | [alert](alert.md) collection | Get a alert object. |
| [Update alerts](../api/alert-update.md) | [alert](alert.md) collection | Get a alert object. |

## Properties
None

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|alerts|[alert](alert.md) collection| Read-only. Nullable.|


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.security"
}-->

```json
{
}
```

## Example

The **security** resource is available at the root of the graph.

<!--{
  "blockType": "request"
}-->
```http
GET https://graph.microsoft.com/v1.0/security
```

<!--{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security"
}-->
```json
HTTP/1.1 200 OK
Content-type: application/json

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "security resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

