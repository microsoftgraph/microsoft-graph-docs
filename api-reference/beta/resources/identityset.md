---
author: JeremyKelley
description: "The identitySet resource is a keyed collection of identity resources."
ms.date: 09/10/2017
title: IdentitySet
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# identitySet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **identitySet** resource is a keyed collection of [identity](identity.md) resources.

It is used to represent a set of identities associated with various events for an item, such as _created by_ or _last modified by_.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identitySet",
  "optionalProperties": [
    "application",
    "applicationInstance",
    "conversation",
    "conversationIdentityType",
    "device",
    "encrypted",
    "guest",
    "phone",
    "user"
  ],
  "openType": true
} -->
```json
{
  "application": {"@odata.type": "microsoft.graph.identity"},
  "applicationInstance": {"@odata.type": "microsoft.graph.identity"},
  "conversation": {"@odata.type": "microsoft.graph.identity"},
  "conversationIdentityType": {"@odata.type": "microsoft.graph.identity"},
  "device": {"@odata.type": "microsoft.graph.identity"},
  "encrypted": {"@odata.type": "microsoft.graph.identity"},
  "guest": {"@odata.type": "microsoft.graph.identity"},
  "phone": {"@odata.type": "microsoft.graph.identity"},
  "user": {"@odata.type": "microsoft.graph.identity"}
}
```

## Properties

| Property    | Type                    | Description                                             |
|:------------|:------------------------|:--------------------------------------------------------|
| application | [Identity](identity.md) | Optional. The application associated with this action.  |
| conversation| [Identity](identity.md) | Optional. The team or channel associated with this action.       |
| conversationIdentityType| [Identity](identity.md) | Optional. Indicates whether the **conversation** property identifies a team or channel.|
| device      | [Identity](identity.md) | Optional. The device associated with this action.       |
| phone       | [identity](identity.md) | Optional. The phone number associated with this action. |
| user        | [Identity](identity.md) | Optional. The user associated with this action.         |

## Remarks 

See [Call](call.md) for usage of **identitySet** resources.


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Identity set is a collection of identities",
  "section": "documentation",
  "tocPath": "Resources/IdentitySet"
} -->


