---
title: "languageProficiency resource type"
description: "languageProficiency resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# languageProficiency resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about languages that a user has added to their [profile](profile.md).

Inherits from [itemFacet](itemFacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List languages](../api/profile-list-languages.md)|[languageProficiency](../resources/languageproficiency.md) collection|Get the languageProficiency resources from the languages navigation property.|
|[Create languageProficiency](../api/profile-post-languages.md)|[languageProficiency](../resources/languageproficiency.md)|Create a new languageProficiency object.|
|[Get languageProficiency](../api/languageproficiency-get.md)|[languageProficiency](../resources/languageproficiency.md)|Read the properties and relationships of a [languageProficiency](../resources/languageproficiency.md) object.|
|[Update languageProficiency](../api/languageproficiency-update.md)|[languageProficiency](../resources/languageproficiency.md)|Update the properties of a [languageProficiency](../resources/languageproficiency.md) object.|
|[Delete languageProficiency](../api/languageproficiency-delete.md)|None|Deletes a [languageProficiency](../resources/languageproficiency.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|displayName|String|Contains the long-form name for the language. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|reading|languageProficiencyLevel|Represents the users reading comprehension for the language represented by the object. Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|spoken|languageProficiencyLevel|Represents the users spoken proficiency for the language represented by the object. Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.|
|tag|String|Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).|
|written|languageProficiencyLevel|Represents the users written proficiency for the language represented by the object. Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.languageProficiency",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.languageProficiency",
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
  "displayName": "String",
  "tag": "String",
  "spoken": "String",
  "written": "String",
  "reading": "String"
}
```


