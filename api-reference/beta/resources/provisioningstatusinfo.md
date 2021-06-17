---
title: "provisioningStatusInfo resource type"
description: "Describes the status of the provisioning summary event."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# provisioningStatusInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the status of the provisioning summary event. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|status|String| Possible values are: `success`, `warning`, `failure`, `skipped`, `unknownFutureValue`.|
|errorInfo|[provisioningErrorInfo](provisioningerrorinfo.md)| If status is not success/ skipped details for the error are contained in this.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningStatusInfo",
  "baseType": null
}-->

```json
{
  "status": "String",
  "errorinfo": {"@odata.type": "microsoft.graph.provisioningErrorInfo"},}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "provisioningStatusInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


