---
title: "statusDetails resource type"
description: "Describes the status of the provisioning event and the associated errors."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# statusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the status of the provisioning event and the associated errors. It is inherited from [statusBase](/graph/api/resources/statusbase?view=graph-rest-beta) and only used when status is set to 'failure'.  

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|status|String|Possible values are: `success`, `failure`, `skipped`, `unknownFutureValue`. Inherited from statusBase.|
|additionalDetails|String|Additional details in case of error.|
|errorCategory|String|Categorizes the error code.|
|errorCode|String|Unique error code if any occurred.|
|reason|String|Summarizes the status and describes why the status happened.|
|recommendedAction|String|Provides the resolution for the corresponding error.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.statusDetails",
  "baseType": "microsoft.graph.statusBase"
}-->

```json
{
  "status": "failure",
  "additionalDetails": "String",
  "errorCategory": "String",
  "errorCode": "String",
  "reason": "String",
  "recommendedAction": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "statusDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


