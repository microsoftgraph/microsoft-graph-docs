---
title: "userSource resource type"
description: "The container for a custodian's mailbox and OneDrive for Business site."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "compliance"
doc_type: resourcePageType
---

# userSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The container for a [custodian's](custodian.md) mailbox and OneDrive for Business site.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List userSources](../api/custodian-list-usersources.md)|[userSource](../resources/usersource.md) collection|Get a list of the **userSource** objects and their properties.|
|[Create userSource](../api/custodian-post-usersources.md)|[userSource](../resources/usersource.md)|Create a new **userSource** object.|
|[Get userSource](../api/usersource-get.md)|[userSource](../resources/usersource.md)|Read the properties and relationships of a **userSource** object.|
|[Delete userSource](../api/usersource-delete.md)|None|Delete a **userSource** object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **userSource**.|
|createdDateTime|DateTimeOffset|The date and time the us**userSource**erSource was created|
|displayName|String|The display name associated with the mailbox and site.|
|email|String|Email address of the user's mailbox.|
|id|String|The ID of the **userSource**. This is not the ID of the actual group|
|includedSources|sourceType|Specifies which sources are included in this group. Possible values are: `mailbox`, `site`.|

### sourceType values

Types of source related to the user. Includes mailbox and site by default.

|Member|Description|
|:----|-----------|
|mailbox|Represents a mailbox.|
|site|Represents a OneDrive for Business site.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userSource",
  "baseType": "microsoft.graph.dataSource",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.userSource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)",
  "email": "String",
  "includedSources": "String"
}
```
