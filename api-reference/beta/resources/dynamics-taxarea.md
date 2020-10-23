---
title: taxAreas resource type 
description: A tax area.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# taxAreas resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tax area resource type in Dynamics 365 Business Central.

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get taxAreas](../api/dynamics-taxarea-get.md)|taxAreas|Gets a tax area object.|
|[Post taxAreas](../api/dynamics-create-taxarea.md)|taxAreas|Creates a tax area object.|
|[Patch taxAreas](../api/dynamics-taxarea-update.md)|taxAreas|Updates a tax area object.|
|[Delete taxAreas](../api/dynamics-taxarea-delete.md)|none|Deletes a tax area object.|

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




