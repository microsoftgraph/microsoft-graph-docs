---
title: "personAnnotation resource type"
description: "personAnnotation resource type"
author: "kevinbellinger"
localization_priority: Normal
ms.prod: "people"
doc_type: resourcePageType
---

# personAnnotation resource type

Namespace: microsoft.graph

Provides information within notes that the user has associated with themselves in various services and shared with others.

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List notes](../api/profile-list-notes.md)|[personAnnotation](../resources/personannotation.md) collection|Get the personAnnotation resources from the notes navigation property.|
|[Create personAnnotation](../api/profile-post-notes.md)|[personAnnotation](../resources/personannotation.md)|Create a new personAnnotation object.|
|[Get personAnnotation](../api/personannotation-get.md)|[personAnnotation](../resources/personannotation.md)|Read the properties and relationships of a [personAnnotation](../resources/personannotation.md) object.|
|[Update personAnnotation](../api/personannotation-update.md)|[personAnnotation](../resources/personannotation.md)|Update the properties of a [personAnnotation](../resources/personannotation.md) object.|
|[Delete personAnnotation](../api/personannotation-delete.md)|None|Deletes a [personAnnotation](../resources/personannotation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|detail|[itemBody](../resources/itembody.md)|Contains the detail of the note itself.|
|displayName|String|Contains a friendly name for the note.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personAnnotation",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personAnnotation",
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
  "detail": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "displayName": "String"
}
```


