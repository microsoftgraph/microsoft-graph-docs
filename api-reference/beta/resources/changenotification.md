---
title: "changeNotification resource type"
description: "Represents the change notification sent to the subscriber."
localization_priority: Normal
author: "davidmu1"
doc_type: resourcePageType
ms.prod: "non-product-specific"
---

# changeNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the notification sent to the subscriber.

For details, see [Use the Microsoft Graph API to get change notifications](webhooks.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| changeType | string | Indicates the type of change that will raise the change notification. The supported values are: `created`, `updated`, `deleted`. Required. |
| clientState | string | Value of the **clientState** property sent specified in the subscription request (if any). The maximum length is 255 characters. The client can check whether the change notification came from the service by comparing the values of the **clientState** property. The value of the **clientState** property sent with the subscription is compared with the value of the **clientState** property received with each change notification. Optional. |
| encryptedContent | [microsoft.graph.changeNotificationEncryptedContent](changenotificationencryptedcontent.md) | (Preview) Encrypted content attached with the change notification. Only provided if **encryptionCertificate** and **includeResourceData** were defined during the subscription request and if the resource supports it. Optional |
| lifecycleEvent | string | The type of lifecycle notification if the current notification is a lifecycle notification. Optional. Supported values are `missed`, `removed`, `reauthorizationRequired`. |
| id | string | Unique ID for the notification. Optional. |
| resource | string | The URI of the resource that emitted the change notification relative to `https://graph.microsoft.com`. Required. |
| resourceData | [microsoft.graph.resourceData](resourcedata.md) | The content of this property depends on the type of resource being subscribed to. Required. |
| subscriptionExpirationDateTime | [dateTime](https://tools.ietf.org/html/rfc3339) | The expiration time for the subscription. Required. |
| subscriptionId | string | The unique identifier of the subscription that generated the notification. |
| tenantId | guid | The unique identifier of the tenant from which the change notification originated. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.changeNotification"
}-->

```json
{
  "subscriptionId": "76222963-cc7b-42d2-882d-8aaa69cb2ba3",
  "changeType": "created",
  "clientState": "client state provided when creating subscription",
  "id": "15ee1d1f-af7b-42d9-885b-9d00db065dd9",
  "tenantId": "2c937fad-a8a7-496c-b0e4-bf77dcc7eb2a",
  "subscriptionExpirationDateTime": "2020-04-12T23:20:50.52Z",
  "resource": "teams('d29828b8-c04d-4e2a-b2f6-07da6982f0f0')/channels('19:f127a8c55ad949d1a238464d22f0f99e@thread.skype')/messages('1565045424600')/replies('1565047490246')",
  "resourceData": {
    "id": "1565293727947",
    "@odata.type": "#Microsoft.Graph.ChatMessage",
    "@odata.id": "teams('88cbc8fc-164b-44f0-b6a6-b59b4a1559d3')/channels('19:8d9da062ec7647d4bb1976126e788b47@thread.tacv2')/messages('1565293727947')/replies('1565293727947')"
  }
}
```

<!-- uuid: 15ee1d1f-af7b-42d9-885b-9d00db065dd9
2020-05-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "change notification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
