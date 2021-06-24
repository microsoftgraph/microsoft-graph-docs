---
title: "teamworkTagMember resource type"
description: "Represents a user in a team who has a tag applied to them."
author: "anniecolonna"
localization_priority: Normal
ms.prod: "teamwork"
doc_type: resourcePageType
---

# teamworkTagMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user in a team to whom a tag is applied.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamworkTagMembers](../api/teamworktagmember-list.md)|**teamworkTagMember** collection|Get a list of the members of a standard tag in a team and their properties.|
|[Get teamworkTagMember](../api/teamworktagmember-get.md)|**teamworkTagMember**|Get the properties and relationships of a member of a standard tag in a team.|
|[Delete teamworkTagMember](../api/teamworktagmember-delete.md)|None|Delete a member from a standard tag in the team.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The member's display name.|
|ID|String|ID of the member.|
|tenantID|String|The ID of the tenant that the tag member is a part of.|
|userID|String|The user ID of the member.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "ID",
  "@odata.type": "microsoft.graph.teamworkTagMember",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "ID": "String (Identifier)",
  "displayName": "String",
  "tenantID": "String",
  "userID": "String"
}
```

