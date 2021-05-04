---
title: "itemPhone resource type"
description: "itemPhone resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# itemPhone resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detailed information about phone numbers associated with a user in various services.

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List phones](../api/profile-list-phones.md)|[itemPhone](../resources/itemphone.md) collection|Get the itemPhone resources from the phones navigation property.|
|[Create itemPhone](../api/profile-post-phones.md)|[itemPhone](../resources/itemphone.md)|Create a new itemPhone object.|
|[Get itemPhone](../api/itemphone-get.md)|[itemPhone](../resources/itemphone.md)|Read the properties and relationships of an [itemPhone](../resources/itemphone.md) object.|
|[Update itemPhone](../api/itemphone-update.md)|[itemPhone](../resources/itemphone.md)|Update the properties of an [itemPhone](../resources/itemphone.md) object.|
|[Delete itemPhone](../api/itemphone-delete.md)|None|Deletes an [itemPhone](../resources/itemphone.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|displayName|String|Friendly name the user has assigned this phone number. |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|number|String|Phone number provided by the user.|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|type|phoneType|The type of phone number within the object. Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.itemPhone",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.itemPhone",
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
  "type": "String",
  "number": "String"
}
```


