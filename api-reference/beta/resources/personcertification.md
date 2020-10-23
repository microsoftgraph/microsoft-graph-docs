---
title: "personCertification resource type"
description: "personCertification resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: resourcePageType
---

# personCertification resource type

Namespace: microsoft.graph

Represents a certification or designation which has been associated with a user's [profile](../resources/profile.md).

Inherits from [itemFacet](../resources/itemfacet.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List certifications](../api/profile-list-certifications.md)|[personCertification](../resources/personcertification.md) collection|Get the personCertification resources from the certifications navigation property.|
|[Create personCertification](../api/profile-post-certifications.md)|[personCertification](../resources/personcertification.md)|Create a new personCertification object.|
|[Get personCertification](../api/personCertification-get.md)|[personCertification](../resources/personcertification.md)|Read the properties and relationships of an [personCertification](../resources/personcertification.md) object.|
|[Update personCertification](../api/personCertification-update.md)|[personCertification](../resources/personcertification.md)|Update the properties of an [personCertification](../resources/personcertification.md) object.|
|[Delete personCertification](../api/personCertification-delete.md)|None|Deletes an [personCertification](../resources/personcertification.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|certificationId  |String      |The referenceable identifier for the certification. |
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description      |String      |Description of the certification.                   |
|displayName      |String      |Title of the certification.                         |
|endDate          |Date        |The date that the certification expires.            |
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|issuedDate       |Date        |The date that the certification was issued.         |
|issuingAuthority |String      |Authority which granted the certification.          |
|issuingCompany   |String      |Company which granted the certification.          |
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|startDate        |Date        |The date that the certification became valid.       |
|thumbnailUrl     |String      |URL referencing a thumbnail of the certification.   |
|webUrl           |String      |URL referencing the certification.                  |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.personCertification",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.personCertification",
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
  "certificationId": "String",
  "description": "String",
  "displayName": "String",
  "endDate": "Date",
  "issuedDate": "Date",
  "issuingAuthority": "String",
  "issuingCompany": "String",
  "startDate": "Date",
  "thumbnailUrl": "String",
  "webUrl": "String"
}
```


