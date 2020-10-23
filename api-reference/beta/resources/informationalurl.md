---
title: "informationalUrl resource type"
description: "Basic profile information of the application."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sureshja"
---

# informationalUrl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Basic profile information of the application.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|logoUrl|String|CDN URL to the application's logo, Read-only.|
|marketingUrl|String| Link to the application's marketing page. For example, https://www.contoso.com/app/marketing |
|privacyStatementUrl|String| Link to the application's privacy statement. For example, https://www.contoso.com/app/privacy |
|supportUrl|String| Link to the application's support page. For example, https://www.contoso.com/app/support |
|termsOfServiceUrl|String| Link to the application's terms of service statement. For example, https://www.contoso.com/app/termsofservice |

## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.informationalUrl"
}-->

```json
{
  "logoUrl": "String",
  "marketingUrl": "String",
  "privacyStatementUrl": "String",
  "supportUrl": "String",
  "termsOfServiceUrl": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "informationalUrl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


