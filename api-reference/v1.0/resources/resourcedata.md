---
title: "resourceData resource type"
description: "Represents the resouce data attached to the change notification sent to the subscriber."
localization_priority: Normal
author: "davidmu1"
doc_type: resourcePageType
ms.prod: "non-product-specific"
---

# resourceData resource type

Namespace: microsoft.graph

Represents the resouce data attached to the change notification sent to the subscriber.

For details, see [Use the Microsoft Graph API to get change notifications](webhooks.md).

## Methods

None.

## Properties

For Outlook resources, **resourceData** contains the following fields:

| Property | Type | Description |
|:---------|:-----|:------------|
| @odata.type | string | The OData entity type in Microsoft Graph that describes the represented object. |
| @odata.id | string | The OData identifier of the object. |
| @odata.etag | string | The HTTP entity tag that represents the version of the object. |
| id | string | The identifier of the object. |

> **Note:** The `id` value provided in **resourceData** is valid at the time the change notification was generated. Some actions, such as moving a message to another folder, might result in the `id` no longer being valid when the change notification is processed.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resourceData"
}-->

```json
{
  "id": "1565293727947",
  "@odata.type": "#Microsoft.Graph.ChatMessage",
  "@odata.id": "teams('88cbc8fc-164b-44f0-b6a6-b59b4a1559d3')/channels('19:8d9da062ec7647d4bb1976126e788b47@thread.tacv2')/messages('1565293727947')/replies('1565293727947')"
}
```

<!-- uuid: eb6c98ec-8257-4826-910e-5c603265257f
2020-05-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "change notification resource data resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
