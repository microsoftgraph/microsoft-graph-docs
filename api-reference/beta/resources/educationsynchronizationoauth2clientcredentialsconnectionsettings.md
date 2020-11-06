---
title: "educationSynchronizationOAuth2ClientCredentialsConnectionSettings resource"
description: "When OAuth2 Client Credentials Grant is to be used to connect to the data provider, this connection settings type should be used to set up the profile."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: apiPageType
---

# educationSynchronizationOAuth2ClientCredentialsConnectionSettings resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When [OAuth2 Client Credentials Grant](https://tools.ietf.org/html/rfc6749#section-4.4) is to be used to connect to the data provider, this connection settings type should be used to set up the profile.

Derived from [educationSynchronizationConnectionSettings].

## Properties

| Property     | Type   | Description                                                                                                                |
| :----------- | :----- | :------------------------------------------------------------------------------------------------------------------------- |
| clientId     | String | Client ID used to connect to the provider. Inherited from [educationSynchronizationConnectionSettings].                    |
| clientSecret | String | Client secret to authenticate the connection to the provider. Inherited from [educationSynchronizationConnectionSettings]. |
| tokenUrl     | String | The URL to get access tokens for the data provider.                                                                        |
| scope        | String | The scope of the access request (see [RFC6749](https://tools.ietf.org/html/rfc6749#section-3.3)).                          |

[educationsynchronizationconnectionsettings]: educationsynchronizationconnectionsettings.md

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSynchronizationOAuth2ClientCredentialsConnectionSettings"
}-->

```json
{
  "@odata.type": "#microsoft.graph.educationSynchronizationOAuth2ClientCredentialsConnectionSettings",
  "clientId": "String",
  "clientSecret": "String",
  "tokenUrl": "String",
  "scope": "String"
}
```


