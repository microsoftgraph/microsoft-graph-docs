---
title: "educationOrganization resource type"
description: "Abstract entity used to model the commonality between different organization types within the education sector."
author: "mlafleur"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationOrganization resource type

Namespace: microsoft.graph

Abstract entity used to model the commonality between different organization types within the education sector.

Inherits from [entity](../resources/entity.md).

## Properties

| Property             | Type                    | Description                                                                            |
| :------------------- | :---------------------- | :------------------------------------------------------------------------------------- |
| description          | String                  | Organization description.                                                              |
| displayName          | String                  | Organization display name.                                                             |
| externalSource       | educationExternalSource | Source where this organization was created from. Possible values are: `sis`, `manual`. |
| externalSourceDetail | String                  | The name of the external source this resources was generated from.                     |
| id                   | String                  | Object identifier. Inherited from [entity](../resources/entity.md)                     |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationOrganization",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationOrganization",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "externalSource": "String",
  "externalSourceDetail": "String"
}
```
