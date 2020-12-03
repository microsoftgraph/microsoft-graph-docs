---
title: "implicitGrantSettings resource type"
description: "Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. Separate properties are available to request ID and access tokens as part of the implicit flow. To enable implicit flow, at least one of the following properties must be set to true."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sureshja"
---

# implicitGrantSettings resource type

Namespace: microsoft.graph

Specifies whether this web application can request tokens using the OAuth 2.0 implicit flow. Separate properties are available to request ID and access tokens as part of the implicit flow. To enable implicit flow, at least one of the following properties must be set to true.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
|enableIdTokenIssuance| Boolean | Specifies whether this web application can request an ID token using the OAuth 2.0 implicit flow.|
|enableAccessTokenIssuance| Boolean | Specifies whether this web application can request an access token using the OAuth 2.0 implicit flow.|

## JSON representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.implicitGrantSettings"
}-->
```json
{
  "enableIdTokenIssuance": "Boolean",
  "enableAccessTokenIssuance": "Boolean"
}

```

