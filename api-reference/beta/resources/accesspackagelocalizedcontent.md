---
title: "accessPackageLocalizedContent resource type"
description: "A complex type used to represent text in different locals, along with a default text.*"
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# accessPackageLocalizedContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A complex type used to represent a text in multiple localalized forms. It includes a default text, which is used in any case where the requested localization is not available.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultText|String|The fallback string, which is used when a requested localization is not available. Required. |
|localizedTexts|[accessPackageLocalizedText](../resources/accesspackagelocalizedtext.md) collection|Content represented in a format for a specific locale. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.accessPackageLocalizedContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.accessPackageLocalizedContent",
  "defaultText": "String",
  "localizedTexts": [
    {
      "@odata.type": "microsoft.graph.accessPackageLocalizedText"
    }
  ]
}
```
