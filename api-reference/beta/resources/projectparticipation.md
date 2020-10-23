---
title: "projectParticipation resource type"
description: "projectParticipation resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# projectParticipation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about projects associated with a user.

Inherits from [itemFacet](itemfacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List projects](../api/profile-list-projects.md)|[projectParticipation](../resources/projectparticipation.md) collection|Get the projectParticipation resources from the projects navigation property.|
|[Create projectParticipation](../api/profile-post-projects.md)|[projectParticipation](../resources/projectparticipation.md)|Create a new projectParticipation object.|
|[Get projectParticipation](../api/projectparticipation-get.md)|[projectParticipation](../resources/projectparticipation.md)|Read the properties and relationships of a [projectParticipation](../resources/projectparticipation.md) object.|
|[Update projectParticipation](../api/projectparticipation-update.md)|[projectParticipation](../resources/projectparticipation.md)|Update the properties of a [projectParticipation](../resources/projectparticipation.md) object.|
|[Delete projectParticipation](../api/projectparticipation-delete.md)|None|Deletes a [projectParticipation](../resources/projectparticipation.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|Contains categories a user has associated with the project (for example, digital transformation, oil rig). |
|client|[companyDetail](../resources/companydetail.md)|Contains detailed information about the client the project was for. |
|collaborationTags|String collection|Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: `askMeAbout`, `ableToMentor`, `wantsToLearn`, `wantsToImprove`.|
|colleagues|[relatedPerson](../resources/relatedperson.md) collection|Lists people that also worked on the project. |
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|detail|[positionDetail](../resources/positiondetail.md)|Contains detail about the user's role on the project.|
|displayName|String|Contains a friendly name for the project.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|sponsors|[relatedPerson](../resources/relatedperson.md) collection|The Person or people who sponsored the project.    |
## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.projectParticipation",
  "baseType": ""
}-->

```json
{
  "@odata.type": "#microsoft.graph.projectParticipation",
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
  "client": {
    "@odata.type": "microsoft.graph.companyDetail"
  },
  "displayName": "String",
  "detail": {
    "@odata.type": "microsoft.graph.positionDetail"
  },
  "colleagues": [
    {
      "@odata.type": "microsoft.graph.relatedPerson"
    }
  ],
  "sponsors": [
    {
      "@odata.type": "microsoft.graph.relatedPerson"
    }
  ],
  "collaborationTags": [
    "String"
  ]
}
```


