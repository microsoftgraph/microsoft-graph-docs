---
title: "subscription resource type"
description: "A subscription allows a client app to receive change notifications about changes to data in Microsoft Graph. Currently, subscriptions are enabled for the following resources:"
localization_priority: Priority
author: "davidmu1"
ms.prod: ""
doc_type: resourcePageType
---

# subscription resource type

Namespace: microsoft.graph

A subscription allows a client app to receive change notifications about changes to data in Microsoft Graph. Currently, subscriptions are enabled for the following resources:

- An [alert][] from the Microsoft Graph Security API
- A [callRecord][] produced after a call or meeting in Microsoft Teams
- A [chatMessage][] sent via teams or channels in Microsoft Teams
- A [conversation][] in a Microsoft 365 group
- Content in the hierarchy of a root folder [driveItem][] in OneDrive for Business, or of a root folder or subfolder [driveItem][] in a user's personal OneDrive
- A [list][] under a SharePoint [site][]
- A [message][], [event][], or [contact][] in Outlook
- A [user][] or [group][] in Azure Active Directory

See [Use the Microsoft Graph API to get change notifications](webhooks.md) for the possible resource path values for each supported resource.

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [Create subscription](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Subscribes a listener application to receive change notifications when Microsoft Graph data changes. |
| [Update subscription](../api/subscription-update.md) | [subscription](subscription.md) | Renews a subscription by updating its expiration time. |
| [List subscriptions](../api/subscription-list.md) | [subscription](subscription.md) | Lists active subscriptions. |
| [Get subscription](../api/subscription-get.md) | [subscription](subscription.md) | Reads properties and relationships of subscription object. |
| [Delete subscription](../api/subscription-delete.md) | None | Deletes a subscription object. |

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| changeType | string | Required. Indicates the type of change in the subscribed resource that will raise a change notification. The supported values are: `created`, `updated`, `deleted`. Multiple values can be combined using a comma-separated list.<br><br>Note: Drive root item and list change notifications support only the `updated` changeType. User and group change notifications support `updated` and `deleted` changeType. |
| notificationUrl | string | Required. The URL of the endpoint that will receive the change notifications. This URL must make use of the HTTPS protocol. |
| resource | string | Required. Specifies the resource that will be monitored for changes. Do not include the base URL (`https://graph.microsoft.com/v1.0/`). See the possible resource path [values](webhooks.md) for each supported resource.|
| expirationDateTime | [dateTime](https://tools.ietf.org/html/rfc3339) | Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to.  See the table below for maximum supported subscription length of time. |
| clientState | string | Optional. Specifies the value of the `clientState` property sent by the service in each change notification. The maximum length is 128 characters. The client can check that the change notification came from the service by comparing the value of the `clientState` property sent with the subscription with the value of the `clientState` property received with each change notification. |
| id | string | Unique identifier for the subscription. Read-only. |
| applicationId | string | Identifier of the application used to create the subscription. Read-only. |
| creatorId | string | Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the id of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the id of the service principal corresponding to the app. Read-only. |
| includeResourceData | Boolean | When set to `true`, change notifications [include resource data](/graph/webhooks-with-resource-data) (such as content of a chat message). Optional. | 
| encryptionCertificate | string | A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional. Required when **includeResourceData** is true. | 
| encryptionCertificateId | string | A custom app-provided identifier to help identify the certificate needed to decrypt resource data. Optional. 
| latestSupportedTlsVersion | String | Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by **notificationUrl**, supports. The possible values are: `v1_0`, `v1_1`, `v1_2`, `v1_3`. </br></br>For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set [timeline](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. </br></br>For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to `v1_2`. |

### Maximum length of subscription per resource type

| Resource            | Maximum expiration time  |
|:--------------------|:-------------------------|
| Security **alert**     | 43200 minutes (under 30 days)  |
| Teams **callRecord**    | 4230 minutes (under 3 days)  |
| Teams **chatMessage**    | 60 minutes (1 hour)  |
| Group **conversation** | 4230 minutes (under 3 days)    |
| OneDrive **driveItem**    | 4230 minutes (under 3 days)    |
| SharePoint **list**    | 4230 minutes (under 3 days)    |
| Outlook **message**, **event**, **contact**              | 4230 minutes (under 3 days)    |
| **user**, **group**, other directory resources   | 4230 minutes (under 3 days)    |

> **Note:** Existing applications and new applications should not exceed the supported value. In the future, any requests to create or renew a subscription beyond the maximum value will fail.

## Relationships

None

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.subscription",
  "@odata.annotations": [
    {
      "capabilities": {
        "skippable": false,
        "toppable": false,
        "countable": false,
        "expandable": false,
        "filterable": false,
        "referenceable": false,
        "selectable": false,
        "sortable": false
      }
    }
  ]
}-->

```json
{
  "changeType": "string",
  "notificationUrl": "string",
  "resource": "string",
  "applicationId" : "string",
  "expirationDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "clientState": "string",
  "creatorId": "string",
  "includeResourceData": "boolean",
  "encryptionCertificate": "string",
  "encryptionCertificateId": "string",
  "latestSupportedTlsVersion": "string"
}
```

[contact]: ./contact.md
[conversation]: ./conversation.md
[driveItem]: ./driveitem.md
[list]: ./list.md
[site]: ./site.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[alert]: ./alert.md
[chatMessage]: ./chatmessage.md
[callRecord]: ./callrecords-callrecord.md

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "subscription resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

