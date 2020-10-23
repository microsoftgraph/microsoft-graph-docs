---
title: "skillProficiency resource type"
description: "skillProficiency resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# skillProficiency resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about skills associated with a user in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods
 
|Method|Return type|Description|
|:---|:---|:---|
|[List skills](../api/profile-list-skills.md)|[skillProficiency](../resources/skillproficiency.md) collection|Get the skillProficiency resources from the skills navigation property.|
|[Create skillProficiency ](../api/profile-post-skills.md)|[skillProficiency](../resources/skillproficiency.md)|Create a new skillProficiency object.|
|[Get skillProficiency](../api/skillproficiency-get.md)|[skillProficiency](../resources/skillproficiency.md)|Read the properties and relationships of a [skillProficiency](../resources/skillproficiency.md) object.|
|[Update skillProficiency](../api/skillproficiency-update.md)|[skillProficiency](../resources/skillproficiency.md)|Update the properties of a [skillProficiency](../resources/skillproficiency.md) object.|
|[Delete skillProficiency](../api/skillproficiency-delete.md)|None|Deletes a [skillProficiency](../resources/skillproficiency.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|Contains categories a user has associated with the skill (for example, personal, professional, hobby). |
|collaborationTags|String collection|Contains experience scenario tags a user has associated with the interest. Allowed values in the collection are: `askMeAbout`, `ableToMentor`, `wantsToLearn`, `wantsToImprove`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|displayName|String|Contains a friendly name for the skill. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|proficiency|skillProficiencyLevel|Detail of the users proficiency with this skill. Possible values are: `elementary`, `limitedWorking`, `generalProfessional`, `advancedProfessional`, `expert`, `unknownFutureValue`.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|webUrl|String|Contains a link to an information source about the skill. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.skillProficiency",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.skillProficiency",
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
  "displayName": "String",
  "proficiency": "String",
  "webUrl": "String",
  "collaborationTags": [
    "String"
  ]
}
```

