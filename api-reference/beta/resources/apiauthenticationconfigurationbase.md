---
title: "apiAuthenticationConfigurationBase resource type"
description: "Represents the base type of authentication configuration used for calling an API."
author: "nickgmicrosoft"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# apiAuthenticationConfigurationBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The base type to hold authentication information for calling an API.

Derived types include:
- [basicAuthentication](basicauthentication.md) for HTTP basic authentication
- [pkcs12certificate](pkcs12certificate.md) for client certificate authentication (used for API connector create or upload)
- [clientCertificateAuthentication](pkcs12certificate.md) for client certificate authentication (used for fetching the client certificates of an API connector)

## Properties

|Property|Type|Description|
|:---|:---|:---|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.apiAuthenticationConfigurationBase"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.apiAuthenticationConfigurationBase"
}
```
