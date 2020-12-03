---
title: "personResponsibility resource type"
description: "personResponsibility resource type"
author: "kevinbellinger"
localization_priority: Normal
ms.prod: "people"
doc_type: resourcePageType
---

# personResponsibility resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides detailed information about responsibilities the user has associated with themselves in various services.

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List responsibilities](../api/profile-list-responsibilities.md)|[personResponsibility](../resources/personresponsibility.md) collection|Get the personResponsibility resources from the responsibilities navigation property.|
|[Create personResponsibility](../api/profile-post-responsibilities.md)|[personResponsibility](../resources/personresponsibility.md)|Create a new personResponsibility object.|
|[Get personResponsibility](../api/personresponsibility-get.md)|[personResponsibility](../resources/personresponsibility.md)|Read the properties and relationships of a [personResponsibility](../resources/personresponsibility.md) object.|
|[Update personResponsibility](../api/personresponsibility-update.md)|[personResponsibility](../resources/personresponsibility.md)|Update the properties of a [personResponsibility](../resources/personresponsibility.md) object.|
|[Delete personResponsibility](../api/personresponsibility-delete.md)|None|Deletes a [personResponsibility](../resources/personresponsibility.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|collaborationTags|String collection|Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: `askMeAbout`, `ableToMentor`, `wantsToLearn`, `wantsToImprove`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description|String|Description of the responsibility.|
|displayName|String|Contains a friendly name for the responsibility. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|webUrl|String|Contains a link to a web page or resource about the responsibility.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personResponsibility",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personResponsibility",
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
  "webUrl": "String",
  "collaborationTags": [
    "String"
  ]
}
```


