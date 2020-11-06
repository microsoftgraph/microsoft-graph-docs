---
title: "personAnniversary resource type"
description: "personAnniversary resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personAnniversary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of meaningful dates associated with a person in a user's [profile](profile.md).

Inherits from [itemFacet](itemFacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List anniversaries](../api/profile-list-anniversaries.md)|[personAnniversary](../resources/personanniversary.md) collection|Get the personAnniversary resources from the anniversaries navigation property.|
|[Create personAnniversary](../api/profile-post-anniversaries.md)|[personAnniversary](../resources/personanniversary.md)|Create a new personAnniversary object.|
|[Get personAnniversary](../api/personanniversary-get.md)|[personAnniversary](../resources/personanniversary.md)|Read the properties and relationships of a [personAnniversary](../resources/personanniversary.md) object.|
|[Update personAnniversary](../api/personanniversary-update.md)|[personAnniversary](../resources/personanniversary.md)|Update the properties of a [personAnniversary](../resources/personanniversary.md) object.|
|[Delete personAnniversary](../api/personanniversary-delete.md)|None|Deletes a [personAnniversary](../resources/personanniversary.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|date|Date|Contains the date associated with the anniversary type.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|type|anniversaryType|The type of anniversary the date represents. Possible values are: `birthday`, `wedding`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personAnniversary",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personAnniversary",
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
  "type": "String",
  "date": "Date"
}
```


