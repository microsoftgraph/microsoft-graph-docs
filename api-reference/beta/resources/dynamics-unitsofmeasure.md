---
title: unitsOfMeasure resource type 
description: A unit of measure object in Dynamics 365 Business Central.
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# unitsOfMeasure resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a unit of measure, which is a standard of measurement of a quantity, in Dynamics 365 Business Central.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get unitsOfMeasure](../api/dynamics-unitsofmeasure-get.md)|unitsOfMeasure|Gets a unit of measure object.|
|[Post unitsOfMeasure](../api/dynamics-create-unitsofmeasure.md)|unitsOfMeasure|Creates a unit of measure object.|
|[Patch unitsOfMeasure](../api/dynamics-unitsofmeasure-update.md)|unitsOfMeasure|Updates a unit of measure object.|
|[Delete unitsOfMeasure](../api/dynamics-unitsofmeasure-delete.md)|none|Deletes a unit of measure object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the unitsOfMeasure. Non-editable.|
|code|string|Specifies the code for the unit of measure.|
|displayName|string|Specifies the unit of measure's display name.|
|internationalStandardCode|string|Specifies the unit of measure code expressed according to the UNECE Rec20 standard in connection with electronic sending of sales documents.|
|lastModifiedDateTime|datetime|The last datetime the unit of measure was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the **unitsOfMeasure** resource.

```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "internationalStandardCode": "string",
  "lastModifiedDateTime": "datetime"
}

```


