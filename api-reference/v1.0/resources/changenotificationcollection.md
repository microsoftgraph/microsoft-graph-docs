---
title: "changeNotificationCollection resource type"
description: "Represents a collection of subscription notifications sent to the subscriber."
localization_priority: Normal
author: "davidmu1"
doc_type: resourcePageType
ms.prod: "non-product-specific"
---

# changeNotificationCollection resource type

Namespace: microsoft.graph

Represents a collection of resource change notifications sent to the subscriber.

For details, see [Use the Microsoft Graph API to get change notifications](webhooks.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| value | collection([changeNotification](changenotification.md)) | The set of notifications being sent to the notification URL. Required. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.changeNotificationCollection"
}-->

```json
{
  "value": [],
  "validationTokens": [
    "eyJ0eXAiOiJKV1QiLCJhbGciOiJSU..."
  ]
}
```

<!-- uuid: 8cc2599e-9740-4191-93fa-bc13c6f91564
2020-05-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "change notification collection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
