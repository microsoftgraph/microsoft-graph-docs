---
title: "passwordSingleSignOnSettings resource type"
description: "Settings related to Password-based single sign-on"
localization_priority: Normal
author: "luleonpla"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# passwordSingleSignOnSettings resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the collection of Password-based single sign-on settings.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|fields|[passwordSingleSignOnField](passwordsinglesignonfield.md) collection||

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.passwordSingleSignOnSettings",
  "baseType": null
}-->

```json
{
  "fields": [{"@odata.type": "microsoft.graph.passwordSingleSignOnField"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "passwordSingleSignOnSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->