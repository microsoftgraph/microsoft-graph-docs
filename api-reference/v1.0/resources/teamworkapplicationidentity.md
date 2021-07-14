---
title: "teamworkApplicationIdentity resource type"
description: "Represents an application in Microsoft Teams."
author: "RamjotSingh"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkApplicationIdentity resource type

Namespace: microsoft.graph

Represents an **application** in Microsoft Teams. `teamworkApplicationIdentity` is used to represent bots and outgoing webhooks @mentioned in messages.


Inherits from [identity](../resources/identity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|applicationIdentityType|teamworkApplicationIdentityType| Type of application that is referenced. Possible values are: `aadApplication`, `bot`, `tenantBot`, `office365Connector`, `outgoingWebhook`, and `unknownFutureValue`.|
|displayName|String|Inherited from [identity](../resources/identity.md). Display name of the application. Optional.|
|id|String|Inherited from [identity](../resources/identity.md). ID of the application.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkApplicationIdentity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
  "id": "String (identifier)",
  "displayName": "String",
  "applicationIdentityType": "String"
}
```

