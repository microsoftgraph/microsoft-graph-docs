---
title: "provisioningErrorInfo resource type"
description: "Describes the status of the provisioning event and the associated errors."
localization_priority: Normal
author: "ArvindHarinder1"
ms.prod: "identity-and-access-reports"
doc_type: "resourcePageType"
---

# provisioningErrorInfo resource type

Namespace: microsoft.graph


Describes the status of the provisioning event and the associated errors. 

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|additionalDetails|String|Additional details in case of error.|
|errorCategory|provisioningStatusErrorCategory|Categorizes the error code. Possible values are `failure`, `nonServiceFailure`, `success`, `unknownFutureValue`|
|errorCode|String|Unique error code if any occurred. [Learn more](/azure/active-directory/reports-monitoring/concept-provisioning-logs#error-codes)|
|reason|String|Summarizes the status and describes why the status happened.|
|recommendedAction|String|Provides the resolution for the corresponding error.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.provisioningErrorInfo",
  "baseType": null
}-->

```json
{
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
  "description": "provisioningErrorInfo resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


