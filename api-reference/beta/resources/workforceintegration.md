---
title: "workforceIntegration resource type"
description: "An instance of a workforce integration with shifts."
localization_priority: Normal
author: "akumar39"
ms.prod: "microsoft-teams"
doc_type: "resourcePageType"
---

# workforceIntegration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An instance of a workforce integration with shifts.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/workforceintegration-list.md) | [workforceIntegration](workforceintegration.md) collection | Get the list of **workforceIntegration** objects associated with this schedule.|
| [Create](../api/workforceintegration-post.md) | [workforceIntegration](workforceintegration.md) | Create a new **workforceIntegration** object.|
| [Get](../api/workforceintegration-get.md) | [workforceIntegration](workforceintegration.md) | Read the properties and relationships of a **workforceIntegration** object. |
| [Update](../api/workforceintegration-update.md) | [workforceIntegration](workforceintegration.md) | Update a **workforceIntegration** object. |
| [Delete](../api/workforceintegration-delete.md) | None | Delete a **workforceIntegration** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|apiVersion|Int32|API version for the call back URL. Start with 1.|
|displayName|String|Name of the workforce integration.|
|encryption|[workforceIntegrationEncryption](workforceintegrationencryption.md)|The workforce integration encryption resource.|
|isActive|Boolean|Indicates whether this workforce integration is currently active and available.|
|supports|string| The Shifts entities supported for synchronous change notifications. Shifts will make a call back to the url provided on client changes on those entities added here. By default, no entities are supported for change notifications. Possible values are: `none`, `shift`, `swapRequest`, `openshift`, `openShiftRequest`, `userShiftPreferences`|
|supportedEntities|string| This property will replace **supports** in v1.0. We recommend that you use this property instead of **supports**. The **supports** property will still be supported in beta for the time being. Possible values are `none`, `shift`, `swapRequest`, `openshift`, `openShiftRequest`, `userShiftPreferences`. If selecting more than one value, all values must start with the first letter in uppercase.|
|url|String| Workforce Integration URL for callbacks from the Shifts service.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workforceIntegration",
  "baseType": ""
}-->

```json
{
  "apiVersion": 1024,
  "displayName": "String",
  "encryption": {"@odata.type": "microsoft.graph.workforceIntegrationEncryption"},
  "isActive": true,
  "supports": "string",
  "url": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workforceIntegration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


