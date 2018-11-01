---
apiDocType: resourcePageType
---
---
title: shipmentMethods resource type 
description: A shipment method in Dynamics 365 Business Central. 
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

# shipmentMethods resource type
Represents a method of shipment in Dynamics 365 Business Central, such as UPS, Fedex, and DHL.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get shipmentMethods](../api/dynamics_shipmentmethods_get.md)|shipmentMethods|Gets a shipment method.|
|[Post shipmentMethods](../api/dynamics_create_shipmentmethods.md)|shipmentMethods|Creates a shipment method.|
|[Patch shipmentMethods](../api/dynamics_shipmentmethods_update.md)|shipmentMethods|Updates a shipment method.|
|[Delete shipmentMethods](../api/dynamics_shipmentmethods_delete.md)|none|Deletes a shipment method.|

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


