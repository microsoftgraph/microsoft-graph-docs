---
title: taxGroups resource type 
description: A tax group object in Dynamics 365 Business Central. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# taxGroups resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a taxGroups resource type in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get taxGroups](../api/dynamics-taxgroups-get.md)|taxGroups|Gets a tax group object.|
|[Post taxGroups](../api/dynamics-create-taxgroups.md)|taxGroups|Creates a tax group object.|
|[Patch taxGroups](../api/dynamics-taxgroups-update.md)|taxGroups|Updates a tax group object.|
|[Delete taxGroups](../api/dynamics-taxgroups-delete.md)|none|Deletes a tax group object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the taxGroup. Read-Only.|
|code|string|Specifies the tax group.|
|displayName|string|Specifies the tax group display name.|
|taxType|string|Specifies the tax type for the group.|
|lastModifiedDateTime|datetime|The last datetime the tax group was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the taxGroup.

```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "taxType": "string",
  "lastModifiedDateTime": "datetime"
}

```




