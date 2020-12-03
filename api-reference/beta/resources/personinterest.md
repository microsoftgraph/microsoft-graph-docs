---
title: "personInterest resource type"
description: "personInterest resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personInterest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides detailed information about interests the user has associated with themselves in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods

| Method                                                    | Return Type                         | Description                                                           |
|:----------------------------------------------------------|:------------------------------------|:----------------------------------------------------------------------|
|[List interests](../api/profile-list-interests.md)|[personInterest](../resources/personinterest.md) collection|Get the personInterest resources from the interests navigation property.|
|[Create personInterest](../api/profile-post-interests.md)|[personInterest](../resources/personinterest.md)|Create a new personInterest object.|
|[Get personInterest](../api/personinterest-get.md)|[personInterest](../resources/personinterest.md)|Read the properties and relationships of a [personInterest](../resources/personinterest.md) object.|
|[Update personInterest](../api/personinterest-update.md)|[personInterest](../resources/personinterest.md)|Update the properties of a [personInterest](../resources/personinterest.md) object.|
|[Delete personInterest](../api/personinterest-delete.md)|None|Deletes a [personInterest](../resources/personinterest.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|Contains categories a user has associated with the interest (for example, personal, recipies). |
|collaborationTags|String collection|Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: `askMeAbout`, `ableToMentor`, `wantsToLearn`, `wantsToImprove`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description|String|Contains a description of the interest.|
|displayName|String|Contains a friendly name for the interest.  |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|webUrl|String|Contains a link to a web page or resource about the interest. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.personInterest",
  "baseType": ""
}-->

```json
{
  "@odata.type": "#microsoft.graph.personInterest",
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
  "description": "String",
  "displayName": "String",
  "webUrl": "String",
  "collaborationTags": [
    "String"
  ]
}
```


