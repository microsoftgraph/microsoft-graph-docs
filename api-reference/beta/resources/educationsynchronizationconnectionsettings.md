---
title: "educationSynchronizationConnectionSettings resource type"
description: "Represents the provider connection settings. This allows the system to know how to connect to the provider APIs. "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationConnectionSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the provider connection settings. This allows the system to know how to connect to the provider APIs.

> [!NOTE]
> This complex type is abstract. Refer to the specific types of connection settings listed.

## Derived types

| Type                                                                                                                                      | Description                                                                   |
| :---------------------------------------------------------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------- |
| [educationSynchronizationOAuth1ConnectionSettings](educationsynchronizationoauth1connectionsettings.md)                                   | Use this type to provide OAuth1 connection settings.                          |
| [educationSynchronizationOAuth2ClientCredentialsConnectionSettings](educationsynchronizationoauth2clientcredentialsconnectionsettings.md) | Use this type to provide OAuth2 Client Credentials Grant connection settings. |

## Properties

| Property     | Type   | Description                                                   |
| :----------- | :----- | :------------------------------------------------------------ |
| clientId     | String | Client ID used to connect to the provider.                    |
| clientSecret | String | Client secret to authenticate the connection to the provider. |


