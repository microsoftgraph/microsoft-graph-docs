---
title: "workforceIntegrationEncryption resource type"
description: "An encryption entity defining the protocol and secret for a workforce integration."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# workforceIntegrationEncryption resource type

Namespace: microsoft.graph

An encryption entity defining the protocol and secret for a [workforceintegration](../resources/workforceintegration.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|protocol|String| Possible values are: `sharedSecret`, `unknownFutureValue`.|
|secret|String|Encryption shared secret.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workforceIntegrationEncryption",
  "baseType": null
}-->

```json
{
  "protocol": "String",
  "secret": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workforceIntegrationEncryption resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

