---
title: shipmentMethods resource type 
description: A shipment method in Dynamics 365 Business Central. 
services: project-madeira
documentationcenter: ''
author: SusanneWindfeldPedersen
localization_priority: Normal
ms.prod: "dynamics-365-business-central"
doc_type: resourcePageType
---

# shipmentMethods resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a method of shipment in Dynamics 365 Business Central, such as UPS, Fedex, and DHL.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get shipmentMethods](../api/dynamics-shipmentmethods-get.md)|shipmentMethods|Gets a shipment method.|
|[Post shipmentMethods](../api/dynamics-create-shipmentmethods.md)|shipmentMethods|Creates a shipment method.|
|[Patch shipmentMethods](../api/dynamics-shipmentmethods-update.md)|shipmentMethods|Updates a shipment method.|
|[Delete shipmentMethods](../api/dynamics-shipmentmethods-delete.md)|none|Deletes a shipment method.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|GUID|The unique ID of the shipmentMethod. Non-editable.|
|code|string|Specifies the shipment method code.|
|displayName|string|Specifies the shipment method display name.|
|lastModifiedDateTime|datetime|The last datetime the shipment method was modified. Read-Only.|  


## Relationships
None

## JSON representation

Here is a JSON representation of the shipmentMethod.

```json
{
  "id": "GUID",
  "code": "string",
  "displayName": "string",
  "lastModifiedDateTime": "datetime"
}

```




