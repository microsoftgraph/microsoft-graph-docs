---
title: "requestorManager complex type"
description: "Identifies a relationship to another user in the tenant who will be allowed as approver."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# requestorManager complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used in the approval settings of an [access package assignment policy](accesspackageassignmentpolicy.md). 
It is a subtype of [userSet](userset.md), in which the `@odata.type` value `#microsoft.graph.requestorManager` indicates that a requesting user's manager is to be the approver.  When creating an access package assignment policy approval stage with requestorManager, also include another approver, such as a single user or group member, in case the requesting user does not have a manager.


## Properties


| Property                     | Type                      | Description |
| :--------------------------- | :------------------------ | :---------- |
| isBackup | Boolean | For a manager in an approval stage, indicates whether the manager is a backup fallback approver. |
|managerLevel | Int32 | The hierarchical level of the manager with respect to the requestor. For example, the direct manager of a requestor would have a managerLevel of 1, while the manager of the requestor's manager would have a managerLevel of 2. Default value for managerLevel is 1. Possible values for this property range from 1 to 2. |


## JSON representation

The following is a JSON representation of the type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.requestorManager",
  "baseType": "microsoft.graph.userSet"
}-->

```json
{
  "isBackup": false,
  "managerLevel": 1
}
```


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "requestorManager complex type",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


