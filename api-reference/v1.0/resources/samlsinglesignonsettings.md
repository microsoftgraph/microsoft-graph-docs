---
title: "samlSingleSignOnSettings resource type"
description: "Represents the SAML single sign-on settings."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "sureshja"
---

# samlSingleSignOnSettings resource type

Represents a container for settings related to SAML single sign-on.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|relayState|String| The relative URI the service provider would redirect to after completion of the single sign-on flow. |


## JSON representation
Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.samlSingleSignOnSettings"
}-->

```json
{
    "relayState": "string",
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "samlSingleSignOnSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
