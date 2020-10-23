---
title: "educationSynchronizationOAuth1ConnectionSettings resource"
description: "When OAuth1 is to be used to connect to the data provider, this connection settings type should be used to set up the profile."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
doc_type: resourcePageType
---

# educationSynchronizationOAuth1ConnectionSettings resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When OAuth1 is to be used to connect to the data provider, this connection settings type should be used to set up the profile.

Derived from [educationSynchronizationConnectionSettings].

## Properties

| Property     | Type   | Description                                                                                                                |
| :----------- | :----- | :------------------------------------------------------------------------------------------------------------------------- |
| clientId     | String | Client ID used to connect to the provider. Inherited from [educationSynchronizationConnectionSettings].                    |
| clientSecret | String | Client secret to authenticate the connection to the provider. Inherited from [educationSynchronizationConnectionSettings]. |

[educationsynchronizationconnectionsettings]: educationsynchronizationconnectionsettings.md

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSynchronizationOAuth1ConnectionSettings"
}-->

```json
{
  "@odata.type": "microsoft.graph.educationSynchronizationOAuth1ConnectionSettings",
  "clientId": "String",
  "clientSecret": "String"
}
```


