---
title: "itemFacet resource type"
description: "itemFacet resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemFacet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type that all resource types in the [profile](profile.md) entityset inherit from.

## Properties

| Property             | Type                            | Description                                                                                                                                                                                    |
|:---------------------|:--------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|allowedAudiences      |string                           | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|createdBy             |[identitySet](identityset.md)    | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                   |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id                    |String                           | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](inferencedata.md)| Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](identityset.md)    | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                   |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|isSearchable  |boolean                   |Denotes that the entity has been marked as searchable by the Tenant Administrator or end-user. |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemFacet",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.itemFacet",
  "id": "String (identifier)",
  "allowedAudiences": "String",
  "inference": {
    "@odata.type": "microsoft.graph.inferenceData"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "source": {
    "@odata.type": "microsoft.graph.personDataSource"
  }
}
```



