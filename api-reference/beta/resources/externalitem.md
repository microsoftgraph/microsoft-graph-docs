---
title: "externalItem resource type"
description: "An item added to a Microsoft Graph connection."
localization_priority: Normal
author: "snlraju-msft"
ms.prod: "search"
doc_type: "resourcePageType"
---

# externalItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An item added to a Microsoft Graph [connection](externalconnection.md). 

[!INCLUDE [search-api-preview](../../includes/search-api-preview-signup.md)]

## Methods

| Method                                                        | Return Type                     | Description |
|:--------------------------------------------------------------|:--------------------------------|:--|
| [Create externalItem](../api/externalconnection-put-items.md) | [externalItem](externalitem.md) | Create an externalItem. |
| [Get externalItem](../api/externalitem-get.md)                | [externalItem](externalitem.md) | Get an externalItem.    |
| [Update externalItem](../api/externalitem-update.md)          | [externalItem](externalitem.md) | Update an externalItem. |
| [Delete externalItem](../api/externalitem-delete.md)          | None                            | Delete an externalItem. |

## Properties

| Property   | Type                     | Description                          |
|:-----------|:-------------------------|:-------------------------------------|
| acl        | [acl](acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. Required. |
| content    | [externalItemContent](externalitemcontent.md) | A plain-text  representation of the contents of the item. The text in this property is full-text indexed. Optional. |
| id         | String                   | Developer-provided unique ID of the item within the containing [externalConnection](externalconnection.md). Must be alphanumeric and a maximum of 128 characters. Required. |
| properties | Object                   | A property bag with the properties of the item. The properties MUST conform to the [schema](schema.md) defined for the [externalConnection](externalconnection.md). Required. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalItem",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "acl": [{"@odata.type": "microsoft.graph.acl"}],
  "content": {"@odata.type": "microsoft.graph.externalItemContent"},
  "id": "String (identifier)",
  "properties": "Object"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.externalItem/properties:\r\n      Referenced type microsoft.graph.object is not defined in the doc set! Potential suggestion: microsoft.graph.directoryObject"
  ]
}-->
