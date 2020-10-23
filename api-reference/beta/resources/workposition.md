---
title: "workPosition resource type"
description: "workPosition resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# workPosition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about work positions associated with a user's [profile](profile.md).

This resource type inherits from [itemFacet](itemfacet.md).

## Methods

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List positions](../api/profile-list-positions.md)|[workPosition](../resources/workposition.md) collection|Get the workPosition resources from the positions navigation property.|
|[Create workPosition](../api/profile-post-positions.md)|[workPosition](../resources/workposition.md)|Create a new workPosition object.|
|[Get workPosition](../api/workposition-get.md)|[workPosition](../resources/workposition.md)|Read the properties and relationships of a [workPosition](../resources/workposition.md) object.|
|[Update workPosition](../api/workposition-update.md)|[workPosition](../resources/workposition.md)|Update the properties of a [workPosition](../resources/workposition.md) object.|
|[Delete workPosition](../api/workposition-delete.md)|None|Deletes a [workPosition](../resources/workposition.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|Categories that the user has associated with this position.|
|colleagues|[relatedPerson](../resources/relatedperson.md) collection|Colleagues that are associated with this position.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|detail|[positionDetail](../resources/positiondetail.md)|Contains detailed information about the position. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|isCurrent|Boolean|Denotes whether or not the position is current.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|manager|[relatedPerson](../resources/relatedperson.md)|Contains detail of the user's manager in this position.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|

## Relationships

None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workPosition",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workPosition",
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
  },
  "categories": [
    "String"
  ],
  "detail": {
    "@odata.type": "microsoft.graph.positionDetail"
  },
  "manager": {
    "@odata.type": "microsoft.graph.relatedPerson"
  },
  "colleagues": [
    {
      "@odata.type": "microsoft.graph.relatedPerson"
    }
  ],
  "isCurrent": "Boolean"
}
```

