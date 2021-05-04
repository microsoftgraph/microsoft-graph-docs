---
title: "personWebsite resource type"
description: "personWebsite resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# personWebsite resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about websites associated with a user in various services.

Inherits from [itemFacet](itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List websites](../api/profile-list-websites.md)|[personWebsite](../resources/personwebsite.md) collection|Get the personWebsite resources from the websites navigation property.|
|[Create personWebsite](../api/profile-post-websites.md)|[personWebsite](../resources/personwebsite.md)|Create a new personWebsite object.|
|[Get personWebsite](../api/personwebsite-get.md)|[personWebsite](../resources/personwebsite.md)|Read the properties and relationships of a [personWebsite](../resources/personwebsite.md) object.|
|[Update personWebsite](../api/personwebsite-update.md)|[personWebsite](../resources/personwebsite.md)|Update the properties of a [personWebsite](../resources/personwebsite.md) object.|
|[Delete personWebsite](../api/personwebsite-delete.md)|None|Deletes a [personWebsite](../resources/personwebsite.md) object.|

## Properties

| Property     | Type              | Description                                                                                   |
|:-------------|:------------------|:----------------------------------------------------------------------------------------------|
|categories    |String collection  | Contains categories a user has associated with the website (for example, personal, recipes).  |
|description   |String             | Contains a description of the website.                                                        |
|displayName   |String             | Contains a friendly name for the website.                                                     |
|webUrl        |String             | Contains a link to the website itself.                                                        |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|categories|String collection|Contains categories a user has associated with the website (for example, personal, recipes).|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description|String|Contains a description of the website.|
|displayName|String|Contains a friendly name for the website.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|webUrl|String|Contains a link to the website itself.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personWebsite",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personWebsite",
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
  "webUrl": "String"
}
```


