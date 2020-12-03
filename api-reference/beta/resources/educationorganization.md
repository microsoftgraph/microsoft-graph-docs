---
title: "educationOrganization resource type"
description: "Abstract entity used to model the commonality between different organization types within the education sector.  "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationOrganization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract entity used to model the commonality between different organization types within the education sector.

## Properties

| Property       | Type   | Description                                                                       |
| :------------- | :----- | :-------------------------------------------------------------------------------- |
| description    | String | Organization description.                                                         |
| displayName    | String | Organization display name.                                                        |
| externalSource | String | Where this user was created from. Possible values are: `sis`, `lms`, or `manual`. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationOrganization"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "externalSource": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "educationOrganization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


