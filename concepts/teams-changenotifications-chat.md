---
title: "Get change notifications for chats using Microsoft Graph"
description: "Learn how to get notifications for changes (create and update) for chats using Microsoft Graph APIs."
author: "RamjotSingh"
localization_priority: Priority
ms.prod: "microsoft-teams"
ms.custom: scenarios:getting-started
---

# Get change notifications for chats using Microsoft Graph

Change notifications enable you to subscribe to changes (create and update) to chats. You can get notified whenever a chat is created or updated. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

## Subscribe to changes in any chat at tenant level

To get change notifications for all changes (create and update) related to any chat in a tenant, subscribe to `/chats`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Not supported. | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All   | beta|

### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to changes in a particular chat


To get change notifications for all changes related to a particular chat, subscribe to `/chats/{id}`. This resource supports [including resource data](webhooks-with-resource-data.md) in the notification.

### Permissions

|Permission type      | Permissions (from least to most privileged)              | Supported versions |
|:--------------------|:---------------------------------------------------------|:-------------------|
|Delegated (work or school account) | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | beta |
|Delegated (personal Microsoft account) | Not supported.    | Not supported. |
|Application | ChatSettings.Read.Chat*, ChatSettings.ReadWrite.Chat*, Chat.Manage.Chat*, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All | beta |

> **Note**: Permissions marked with * use [resource-specific consent]( https://aka.ms/teams-rsc).

### Example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{id}",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```


### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for a property change in a chat.

```json
{
    "value": [{
        "subscriptionId": "352887e3-9be0-4b6f-a4e6-dec118d857db",
		"changeType": "Created",
		"clientState": "<<--SpecifiedClientState-->>",
		"subscriptionExpirationDateTime": "2021-06-03T09:50:37.719033+00:00",
		"resource": "chats('19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces')",
		"resourceData": {
			"id": "19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
			"@odata.type": "#microsoft.graph.chat",
			"@odata.id": "chats('19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces')"
		},
		"EncryptedContent": {
			"data": "<<--EncryptedContent-->>",
			"dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",
			"encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
			"encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
		}
			"tenantId": "<<--TenantForWhichNotificationWasSent-->>"
		}],
    "validationTokens": ["<<--ValidationTokens-->>"]
}
```

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](webhooks-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [chats](/graph/api/resources/chat?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
  "topic": null,
  "createdDateTime": "2021-06-03T14:25:04+05:30",
  "lastUpdatedDateTime": "2021-06-03T14:25:04.387Z",
  "chatType": "oneOnOne",
  "members": [
    {
      "userId": "976f4b31-fd01-4e0b-9178-29cc40c14438",
      "email": null,
      "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
      "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOToxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWJfOTc2ZjRiMzEtZmQwMS00ZTBiLTkxNzgtMjljYzQwYzE0NDM4QHVucS5nYmwuc3BhY2VzIyM5NzZmNGIzMS1mZDAxLTRlMGItOTE3OC0yOWNjNDBjMTQ0Mzg=",
      "roles": [],
      "displayName": null,
      "visibleHistoryStartDateTime": "1970-01-01T00:00:00Z",
      "user": null
    },
    {
      "userId": "ee723d3d-22d0-4394-9c32-5764d68f4672",
      "email": null,
      "tenantId": "2432b57b-0abd-43db-aa7b-16eadd115d34",
      "id": "MCMjMjQzMmI1N2ItMGFiZC00M2RiLWFhN2ItMTZlYWRkMTE1ZDM0IyMxOToxMjczYTAxNi0yMDFkLTRmOTUtODA4My0xYjdmOTliM2VkZWJfOTc2ZjRiMzEtZmQwMS00ZTBiLTkxNzgtMjljYzQwYzE0NDM4QHVucS5nYmwuc3BhY2VzIyNlZTcyM2QzZC0yMmQwLTQzOTQtOWMzMi01NzY0ZDY4ZjQ2NzI=",
      "roles": [],
      "displayName": null,
      "visibleHistoryStartDateTime": "1970-01-01T00:00:00Z",
      "user": null
    }
  ],
  "messages": [],
  "installedApps": [],
  "tabs": [],
  "permissionGrants": [],
  "operations": []
}
```

### Notifications without resource data

The following payload describes the information sent in the request for notifications without resource data. This particular payload signifies that a new chat has been created.

```json
{
	"subscriptionId": "8d85051d-779d-45bc-be92-e433f0a5d8ac",
	"changeType": "Created",
	"tenantId": "<<--TenantForWhichNotificationWasSent-->>",
	"clientState": "<<--SpecifiedClientState-->>",
	"subscriptionExpirationDateTime": "2021-06-03T10:26:09.8959595+00:00",
	"resource": "chats('19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces')",
	"resourceData": {
		"id": "19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces",
		"@odata.type": "#microsoft.graph.chat",
		"@odata.id": "chats('19:1273a016-201d-4f95-8083-1b7f99b3edeb_976f4b31-fd01-4e0b-9178-29cc40c14438@unq.gbl.spaces')"
	}
}
```

The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload for the chat details. GET calls will always return the current state of the chat details. If the chat details were updated between when the notification is sent and when the chat details were retrieved, the operation will return the updated chat details.

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Microsoft Teams API overview](teams-concept-overview.md)