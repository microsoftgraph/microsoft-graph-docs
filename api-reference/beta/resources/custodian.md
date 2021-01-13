---
title: "custodian resource type"
description: "In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# custodian resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List custodians](../api/ediscoverycase-list-custodians.md)|[custodian](../resources/custodian.md) collection|Get a list of **custodian** objects and their properties.|
|[Create custodian](../api/ediscoverycase-post-custodians.md)|[custodian](../resources/custodian.md)|Create a new **custodian** object.|
|[Get custodian](../api/custodian-get.md)|[custodian](../resources/custodian.md)|Read the properties and relationships of a **custodian** object.|
|[Update custodian](../api/custodian-update.md)|[custodian](../resources/custodian.md)|Update the properties of a **custodian** object.|
|[release](../api/custodian-release.md)|None|Release a custodian from a case.|
|[activate](../api/custodian-activate.md)|None|Reactivate a custodian that has been released from a case and make them part of the case again.|
|[List siteSources](../api/custodian-list-sitesources.md)|[siteSource](../resources/sitesource.md) collection|Get the **siteSource** resources from the **siteSources** navigation property.|
|[Create siteSources](../api/custodian-post-sitesources.md)|[siteSource](../resources/sitesource.md)|Create a new **siteSource** object.|
|[List unifiedGroupSources](../api/custodian-list-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Get the **unifiedGroupSource** resources from the **unifiedGroupSources** navigation property.|
|[Create unifiedGroupSources](../api/custodian-post-unifiedgroupsources.md)|[unifiedGroupSource](../resources/unifiedgroupsource.md)|Create a new **unifiedGroupSource** object.|
|[List userSources](../api/custodian-list-usersources.md)|[userSource](../resources/usersource.md) collection|Get the **userSource** resources from the **userSources** navigation property.|
|[Create userSources](../api/custodian-post-usersources.md)|[userSource](../resources/usersource.md)|Create a new **userSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|acknowledgedDateTime|DateTimeOffset|Date and time the custodian acknowledged a hold notification.|
|applyHoldToSources|Boolean|Identifies whether a custodian's sources were placed on hold during creation.|
|createdDateTime|DateTimeOffset|Date and time when the custodian was added to the case.|
|displayName|String|Display name of the custodian.|
|email|String|Email address of the custodian.|
|id|String|The ID for the custodian in the specified case. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the custodian object was last modified|
|releasedDateTime|DateTimeOffset|Date and time the custodian was released from the case.|
|status|custodianStatus|Status of the custodian. Possible values are: `active`, `released`.|

### custodianStatus values

|Member|Description|
|:----|-----------|
|active|Custodian is an active part of the case. |
|released|Custodian is released from the case.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[siteSource](../resources/sitesource.md) collection|Data source entity for SharePoint sites associated with the custodian.|
|unifiedGroupSources|[unifiedGroupSource](../resources/unifiedgroupsource.md) collection|Data source entity for groups associated with the custodian.|
|userSources|[userSource](../resources/usersource.md) collection|Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.|

<!--|lastIndexOperation|[caseIndexOperation](../resources/caseindexoperation.md)|**TODO: Add Description**| -->

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.custodian",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.custodian",
  "email": "String",
  "applyHoldToSources": "Boolean",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "acknowledgedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String"
}
```
