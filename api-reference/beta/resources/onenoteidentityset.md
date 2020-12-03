---
title: "oneNoteIdentitySet resource type"
description: "**Support coming soon**"
localization_priority: Normal
author: "jewan-microsoft"
ms.prod: "onenote"
doc_type: resourcePageType
---

# oneNoteIdentitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**Support coming soon**

The OneNoteIdentitySet type is a keyed collection of [OneNoteIdentity](onenoteidentity.md) objects.
 It is used to represent a set of identities associated with various events for a _Notebook_, _Section_ or _Page_, such as
 _created by_ or _last modified by_. 
 
Currently it contains a single key, _**user**_.  In future, keys such as the device or application to change the item may be added.

In future, this type will be merged with [IdentitySet](identityset.md)

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.onenoteIdentityset"
}-->

```json
{
  "user": {"@odata.type": "microsoft.graph.onenoteIdentity"}
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|user|[onenoteIdentity](onenoteidentity.md)|A OneNoteIdentity resource that represents a user.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "oneNoteIdentitySet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


