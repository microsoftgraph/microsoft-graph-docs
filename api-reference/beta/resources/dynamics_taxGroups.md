---
apiDocType: resourcePageType
---
---
title: taxGroups resource type 
description: A tax group object in Dynamics 365 Business Central. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen

ms.service: dynamics365-businesscentral
ms.topic: article
ms.devlang: na
ms.tgt_pltfrm: na
ms.workload: na
ms.date: 03/19/2018
ms.author: solsen
---

# taxGroups resource type
Represents a taxGroups resource type in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get taxGroups](../api/dynamics_taxGroups_get.md)|taxGroups|Gets a tax group object.|
|[Post taxGroups](../api/dynamics_create_taxGroups.md)|taxGroups|Creates a tax group object.|
|[Patch taxGroups](../api/dynamics_taxGroups_update.md)|taxGroups|Updates a tax group object.|
|[Delete taxGroups](../api/dynamics_taxGroups_delete.md)|none|Deletes a tax group object.|

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


