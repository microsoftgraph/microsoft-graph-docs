---
title: "protectDoNotForwardAction resource type"
description: "Informs the application to apply Do Not Forward protection."
localization_priority: Normal
author: "tommoser"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# protectDoNotForwardAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Informs the application to apply Do Not Forward protection. **protectionDoNotForwardAction** may be returned by [evaluateApplication](../api/informationprotectionlabel-evaluateapplication.md) or [evaluateClassificationResults](../api/informationprotectionlabel-evaluateclassificationresults.md) if the resulting label has been configured to apply [Do Not Forward protection](https://docs.microsoft.com/azure/information-protection/configure-usage-rights#do-not-forward-option-for-emails). The consuming application must use a client library to apply protection via Azure Information Protection.

## Properties

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.protectDoNotForwardAction",
  "baseType": "microsoft.graph.informationProtectionAction"
}-->

```json
{
  
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "protectDoNotForwardAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
