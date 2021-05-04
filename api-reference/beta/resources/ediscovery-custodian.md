---
title: "custodian resource type"
description: "In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# custodian resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the context of eDiscovery, represents a user and all of their digital assets, such as email and documents.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List custodians](../api/ediscovery-case-list-custodians.md)|[microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md) collection|Get a list of **custodian** objects and their properties.|
|[Create custodian](../api/ediscovery-case-post-custodians.md)|[microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md)|Create a new **custodian** object.|
|[Get custodian](../api/ediscovery-custodian-get.md)|[microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md)|Read the properties and relationships of a **custodian** object.|
|[Update custodian](../api/ediscovery-custodian-update.md)|[microsoft.graph.ediscovery.custodian](../resources/ediscovery-custodian.md)|Update the properties of a **custodian** object.|
|[release](../api/ediscovery-custodian-release.md)|None|Release a custodian from a case.|
|[activate](../api/ediscovery-custodian-activate.md)|None|Reactivate a custodian that has been released from a case and make them part of the case again.|
|[List siteSources](../api/ediscovery-custodian-list-sitesources.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md) collection|Get the **siteSource** resources associated with the custodian.|
|[Create siteSources](../api/ediscovery-custodian-post-sitesources.md)|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md)|Create a new **siteSource** object.|
|[List unifiedGroupSources](../api/ediscovery-custodian-list-unifiedgroupsources.md)|[microsoft.graph.ediscovery.unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) collection|Get the list of **unifiedGroupSource** resources associated with the custodian.|
|[Create unifiedGroupSources](../api/ediscovery-custodian-post-unifiedgroupsources.md)|[microsoft.graph.ediscovery.unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md)|Create a new **unifiedGroupSource** object.|
|[List userSources](../api/ediscovery-custodian-list-usersources.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md) collection|Get the list of **userSource** resources associated with the custodian.|
|[Create userSources](../api/ediscovery-custodian-post-usersources.md)|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md)|Create a new **userSource** object.|

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
|status|microsoft.graph.ediscovery.custodianStatus|Status of the custodian. Possible values are: `active`, `released`.|

### custodianStatus values

|Member|Description|
|:----|-----------|
|active|Custodian is an active part of the case. |
|released|Custodian is released from the case.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteSources|[microsoft.graph.ediscovery.siteSource](../resources/ediscovery-sitesource.md) collection|Data source entity for SharePoint sites associated with the custodian.|
|unifiedGroupSources|[microsoft.graph.ediscovery.unifiedGroupSource](../resources/ediscovery-unifiedgroupsource.md) collection|Data source entity for groups associated with the custodian.|
|userSources|[microsoft.graph.ediscovery.userSource](../resources/ediscovery-usersource.md) collection|Data source entity for a the custodian. This is the container for a custodian's mailbox and OneDrive for Business site.|

<!--|lastIndexOperation|[caseIndexOperation](../resources/caseindexoperation.md)|**TODO: Add Description**| -->

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.custodian",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.custodian",
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
