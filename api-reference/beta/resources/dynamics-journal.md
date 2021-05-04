---
title: journal resource type 
description: A journal in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# journal resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a journal in Dynamics 365 Business Central.

## Methods

| Method                                            |Return Type|Description    |
|:--------------------------------------------------|:----------|:--------------|
|[Get journal](../api/dynamics-journal-get.md)      |journal    |Gets a journal.   |
|[Post journal](../api/dynamics-create-journal.md)  |journal    |Creates a journal.|
|[Patch journal](../api/dynamics-journal-update.md) |journal    |Updates a journal.|
|[Delete journal](../api/dynamics-journal-delete.md)|none       |Deletes a journal.|

## Properties
| Property	         | Type	                 |Description                                           |
|:-------------------|:----------------------|:-----------------------------------------------------|
|id                  |GUID                   |The unique ID of the journal. Non-editable.           |
|code                |string, maximum size 10| The code of the journal.                             |
|displayName         |string, maximum size 50| The display name of the journal.                     |
|lastModifiedDateTime|datetime               |The last datetime the journal was modified. Read-Only.|

## Bound actions
The journal resource type offers a bound action called `post` which posts the corresponding general journal batch.

Posting the general journal batch is illustrated in the following example:  
`POST https://graph.microsoft.com/beta/financials/companies{id}/journals{id}/post`.

The response has no content; the response code is 204.

## JSON representation

Here is a JSON representation of the resource.


```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "lastModifiedDateTime": "datetime"
}
```



