---
title: "personAward resource type"
description: "personAward resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: resourcePageType
---

# personAward resource type

Namespace: microsoft.graph

Represents an award that has been associated with a user's [profile](../resources/profile.md).

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awards](../api/profile-list-awards.md)|[personAward](../resources/personaward.md) collection|Get the personAward resources from the awards navigation property.|
|[Create personAward](../api/profile-post-awards.md)|[personAward](../resources/personaward.md)|Create a new personAward object.|
|[Get personAward](../api/personaward-get.md)|[personAward](../resources/personaward.md)|Read the properties and relationships of an [personAward](../resources/personaward.md) object.|
|[Update personAward](../api/personaward-update.md)|[personAward](../resources/personaward.md)|Update the properties of an [personAward](../resources/personaward.md) object.|
|[Delete personAward](../api/personaward-delete.md)|None|Deletes an [personAward](../resources/personaward.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description|String|Descpription of the award or honor. |
|displayName|String|Name of the award or honor. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|issuedDate|Date|The date that the award or honor was granted. |
|issuingAuthority|String|Authority which granted the award or honor.  |
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|thumbnailUrl|String|URL referencing a thumbnail of the award or honor.  |
|webUrl|String|URL referencing the award or honor. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personAward",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personAward",
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
  "description": "String",
  "displayName": "String",
  "issuedDate": "Date",
  "issuingAuthority": "String",
  "thumbnailUrl": "String",
  "webUrl": "String"
}
```


