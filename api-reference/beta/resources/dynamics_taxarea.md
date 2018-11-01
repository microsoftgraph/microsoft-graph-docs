---
apiDocType: resourcePageType
---
---
title: taxAreas resource type 
description: A tax area.
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

# taxAreas resource type
Represents a tax area resource type in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get taxAreas](../api/dynamics_taxarea_get.md)|taxAreas|Gets a tax area object.|
|[Post taxAreas](../api/dynamics_create_taxarea.md)|taxAreas|Creates a tax area object.|
|[Patch taxAreas](../api/dynamics_taxarea_update.md)|taxAreas|Updates a tax area object.|
|[Delete taxAreas](../api/dynamics_taxarea_delete.md)|none|Deletes a tax area object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the tax area. Non-editable.|
|code|string, maximum size 20| The code of the tax area.|
|displayName|string, maximum size 50| The display name of the tax area.|
|taxType|string|The tax type of the tax area.|
|lastModifiedDateTime|datetime|The last datetime the tax area was modified. Read-Only.|

## Relationships

## JSON representation

Here is a JSON representation of the resource.


```json
{
  "id": "GUID",
  "code": "String",
  "displayName": "String",
  "taxType": "String",
  "lastModifiedDateTime": "datetime"
}
```


