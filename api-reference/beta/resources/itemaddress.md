---
title: "itemAddress resource type"
description: "itemAddress resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: resourcePageType
---

# itemAddress resource type

Namespace: microsoft.graph

Represents a physical address and details of the location where the address is found.

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List addresses](../api/profile-list-addresses.md)|[itemAddress](../resources/itemaddress.md) collection|Get the itemAddress resources from the addresses navigation property.|
|[Create itemAddress](../api/profile-post-addresses.md)|[itemAddress](../resources/itemaddress.md)|Create a new itemAddress object.|
|[Get itemAddress](../api/itemaddress-get.md)|[itemAddress](../resources/itemaddress.md)|Read the properties and relationships of an [itemAddress](../resources/itemaddress.md) object.|
|[Update itemAddress](../api/itemaddress-update.md)|[itemAddress](../resources/itemaddress.md)|Update the properties of an [itemAddress](../resources/itemaddress.md) object.|
|[Delete itemAddress](../api/itemaddress-delete.md)|None|Deletes an [itemAddress](../resources/itemaddress.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|detail|[physicalAddress](../resources/physicaladdress.md)|Details about the address itself.|
|displayName|String|Friendly name the user has assigned to this address. |
|geoCoordinates|[geoCoordinates](../resources/geocoordinates.md)|The geocoordinates of the address.|
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
  "@odata.type": "microsoft.graph.itemAddress",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.itemAddress",
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
  "detail": {
    "@odata.type": "microsoft.graph.physicalAddress"
  },
  "geoCoordinates": {
    "@odata.type": "microsoft.graph.geoCoordinates"
  }
}
```


