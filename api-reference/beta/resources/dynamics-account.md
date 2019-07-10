---
title: "account resource type"
description: "Represents an account object in Dynamics 365 Business Central."
localization_priority: Normal
author: "SusanneWindfeldPedersen,henrikwh"
ms.prod: "dynamics-365-business-central"
doc_type: "resourcePageType"
---

# account resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an account object in Dynamics 365 Business Central.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get account](../api/dynamics-account-get.md) | [account](dynamics-account.md) | Read properties and relationships of account object. |
| [Update](../api/dynamics-account-update.md) | [account](dynamics-account.md) | Update account object. |
| [Delete](../api/dynamics-account-delete.md) | None | Delete account object. |

## Properties'

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string|The unique ID of the account.|
|number|string, maximum size 20|Specifies the number of the G/L account.|
|displayName|string, maximum size 100|Specifies the name of the G/L account.|
|category|string, maximum size 20|Specifies the category of the G/L account.|
|subCategory|string, maximum size 80|Specifies the subcategory of the account category of the G/L account.|
|blocked|boolean|Specifies that entries cannot be posted to the G/L account. **True** indicates account is blocked and posting is not allowed.|
|lastModifiedDateTime|datetime|The last datetime the account was modified.|


## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.account",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "blocked": true,
  "category": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "number": "String",
  "subCategory": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "account resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->