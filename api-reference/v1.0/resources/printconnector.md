---
title: printConnector resource type
description: Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: resourcePageType
---

# printConnector resource type

Namespace: microsoft.graph

[!INCLUDE [cloudprinting-pricing-disclaimer](../../includes/cloudprinting-pricing-disclaimer.md)]

Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get connector](../api/printconnector-get.md) | [printConnector](printconnector.md) | Read the properties and relationships of the connector object. |
| [Update connector](../api/printconnector-update.md) | [printConnector](printconnector.md) | Update the connector object. |
| [Delete connector](../api/printconnector-delete.md) | None | Unregister the connector from the Universal Print service. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| Read-only.|
|displayName|String|The name of the connector.|
|fullyQualifiedDomainName|String|The connector machine's hostname.|
|operatingSystem|String|The connector machine's operating system version.|
|appVersion|String|The connector's version.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the connector.|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the connector was registered.|
|registeredBy|[userIdentity](useridentity.md)|The user who registered the connector.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printConnector",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printConnector",
  "id": "String (identifier)",
  "displayName": "String",
  "fullyQualifiedDomainName": "String",
  "operatingSystem": "String",
  "appVersion": "String",
  "location": {
    "@odata.type": "microsoft.graph.printerLocation"
  },
  "registeredDateTime": "String (timestamp)"
}
```