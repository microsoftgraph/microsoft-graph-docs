---
author: nkramer
ms.topic: include
ms.date: 01/25/2021
ms.author: nkramer
---

<!-- markdownlint-disable MD041-->

### chatMessage

**chatMessage** subscriptions with delegated permissions do not support resource data (**includeResourceData** must be `false`), and do not require [encryption](/graph/webhooks-with-resource-data).

**chatMessage** subscriptions with application permissions include resource data, and require [encryption](/graph/webhooks-with-resource-data). Subscription creation will fail if [encryptionCertificate](/graph/api/resources/subscription) is not specified. Before creating a **chatMessage** subscription, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis). 

> **Notes:** 
>
>`/teams/getAllMessages` and `/chats/getAllMessages` are available to users that have the 
[required licenses](https://aka.ms/teams-changenotification-licenses).
In the future, Microsoft may require you or your customers to pay additional fees based on the amount of data accessed through the API.
>
>`/chats/getAllMessages` only returns messages from chats owned by the tenant. 
If a chat thread is initiated by a user outside the tenant, that chat thread is not owned by the tenant, and does not create change notifications.
