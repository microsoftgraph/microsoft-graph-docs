---
title: "itemPatent resource type"
description: "itemPatent resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: resourcePageType
---

# itemPatent resource type
 
Namespace: microsoft.graph

Represents a granted or filed patent which has been added to a user's [profile](../resources/profile.md).

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List patents](../api/profile-list-patents.md)|[itemPatent](../resources/itempatent.md) collection|Get the itemPatent resources from the patents navigation property.|
|[Create itemPatent](../api/profile-post-patents.md)|[itemPatent](../resources/itempatent.md)|Create a new itemPatent object.|
|[Get itemPatent](../api/itempatent-get.md)|[itemPatent](../resources/itempatent.md)|Read the properties and relationships of an [itemPatent](../resources/itempatent.md) object.|
|[Update itemPatent](../api/itempatent-update.md)|[itemPatent](../resources/itempatent.md)|Update the properties of an [itemPatent](../resources/itempatent.md) object.|
|[Delete itemPatent](../api/itempatent-delete.md)|None|Deletes an [itemPatent](../resources/itempatent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description|String|Descpription of the patent or filing. |
|displayName|String|Title of the patent or filing. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|isPending        |Boolean     |Indicates the patent is pending.        |
|issuedDate       |Date        |The date that the patent was granted.   |
|issuingAuthority |String      |Authority which granted the patent.     |
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|number           |String      |The patent number.                      |
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|webUrl           |String      |URL referencing the patent or filing. |


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemPatent",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.itemPatent",
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
  "isPending": "Boolean",
  "issuedDate": "Date",
  "issuingAuthority": "String",
  "number": "String",
  "webUrl": "String"
}
```


