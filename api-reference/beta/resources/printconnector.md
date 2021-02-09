---
title: printConnector resource type
description: Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printConnector resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a print connector that has been registered by using a Universal Print subscription. The printConnector resource can be used to view connector status and update properties.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get connector](../api/printconnector-get.md) | [printConnector](printconnector.md) | Read the properties and relationships of the connector object. |
| [Update connector](../api/printconnector-update.md) | [printConnector](printconnector.md) | Update the connector object. |
| [Delete connector](../api/printconnector-delete.md) | None | Unregister the connector from the Universal Print service. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|displayName|String|The name of the connector.|
|fullyQualifiedDomainName|String|The connector machine's hostname.|
|operatingSystem|String|The connector machine's operating system version.|
|appVersion|String|The connector's version.|
|deviceHealth|[deviceHealth](devicehealth.md)|The connector's device health.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the connector.|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the connector was registered.|
|registeredBy|[userIdentity](useridentity.md)|The user who registered the connector.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printConnector"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "fullyQualifiedDomainName": "String",
  "operatingSystem": "String",
  "appVersion": "String",
  "deviceHealth": {"@odata.type": "microsoft.graph.deviceHealth"},
  "location": {"@odata.type": "microsoft.graph.printerLocation"},
  "registeredDateTime": "String (timestamp)",
  "registeredBy": {"@odata.type": "microsoft.graph.userIdentity"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printConnector resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


