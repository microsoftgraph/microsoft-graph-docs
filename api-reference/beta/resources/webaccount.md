---
title: "webAccount resource type"
description: "webAccount resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# webAccount resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents web accounts the user has indicated they use or have added to their user [profile](profile.md).

This resource type inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                     | Return Type                 | Description                                             |
|:-------------------------------------------|:----------------------------|:--------------------------------------------------------|
| [Get webAccount](../api/webaccount-get.md) | [webAccount](webaccount.md) | Read properties and relationships of webAccount object. |
| [Update](../api/webaccount-update.md)      | [webAccount](webaccount.md) | Update webAccount object.                               |
| [Delete](../api/webaccount-delete.md)      | None                        | Delete webAccount object.                               |

## Properties

| Property     | Type                                      | Description                                                                                    |
|:-------------|:------------------------------------------|:-----------------------------------------------------------------------------------------------|
|description   |String                                     | Contains the description the user has provided for the account on the service being referenced.|
|service       |[serviceInformation](serviceinformation.md)| Contains basic detail about the service that is being associated.                              |
|statusMessage |String                                     | Contains a status message from the cloud service if provided or synchronized.                  |
|userId        |String                                     | The user name  displayed for the webaccount (ie: @kevinb)                                      |
|webUrl        |String                                     | Contains a link to the users profile on the cloud service if one exists.                       |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.webAccount",
  "baseType": ""
}-->

```json
{
  "description": "String",
  "service": {"@odata.type": "microsoft.graph.serviceInformation"},
  "statusMessage": "String",
  "userId": "String",
  "webUrl": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "webAccount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->