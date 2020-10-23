---
title: "webAccount resource type"
description: "webAccount resource type"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# webAccount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents web accounts the user has indicated they use or have added to their user [profile](profile.md).

This resource type inherits from [itemFacet](itemfacet.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List webAccounts](../api/profile-list-webaccounts.md)|[webAccount](../resources/webaccount.md) collection|Get the webAccount resources from the webAccounts navigation property.|
|[Create webAccount](../api/profile-post-webaccounts.md)|[webAccount](../resources/webaccount.md)|Create a new webAccount object.|
|[Get webAccount](../api/webaccount-get.md)|[webAccount](../resources/webaccount.md)|Read the properties and relationships of a [webAccount](../resources/webaccount.md) object.|
|[Update webAccount](../api/webaccount-update.md)|[webAccount](../resources/webaccount.md)|Update the properties of a [webAccount](../resources/webaccount.md) object.|
|[Delete webAccount](../api/webaccount-delete.md)|None|Deletes a [webAccount](../resources/webaccount.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedAudiences|String|The audiences that are able to see the values contained within the entity. Inherited from [itemFacet](../resources/itemfacet.md). Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that created the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|createdDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|description|String|Contains the description the user has provided for the account on the service being referenced.|
|id|String|Identifier used for individually addressing the entity. Inherited from [entity](../resources/entity.md)|
|inference|[inferenceData](../resources/inferencedata.md)|Contains inference detail if the entity is inferred by the creating or modifying application. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Provides the identifier of the user and/or application that last modified the entity. Inherited from [itemFacet](../resources/itemfacet.md).|
|lastModifiedDateTime|DateTimeOffset|Provides the dateTimeOffset for when the entity was created. Inherited from [itemFacet](../resources/itemfacet.md).|
|service|[serviceInformation](../resources/serviceinformation.md)| Contains basic detail about the service that is being associated. |
|source|[personDataSource](../resources/persondatasource.md)|Where the values originated if synced from another service. Inherited from [itemFacet](../resources/itemfacet.md).|
|statusMessage|String|Contains a status message from the cloud service if provided or synchronized. |
|userId|String|The user name  displayed for the webaccount.  |
|webUrl|String|Contains a link to the user's profile on the cloud service if one exists.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.webAccount",
  "baseType": "microsoft.graph.itemFacet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webAccount",
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
  "userId": "String",
  "service": {
    "@odata.type": "microsoft.graph.serviceInformation"
  },
  "statusMessage": "String",
  "webUrl": "String"
}
```


