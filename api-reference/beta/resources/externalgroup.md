---
title: "externalGroup resource type"
description: "Represents an external group used to set permissions on externalItems added to a Microsoft Graph connection."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# externalGroup resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an external group. External groups (along with Azure Active Directory users and groups) are used to set permissions on **externalItems** added to a Microsoft Graph connection. Use **externalGroups** to represent non-Azure Active Directory groups or group-like constructs (such as Business units, Teams, and son on) that determine permission over the content in your external data source.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create externalGroup](../api/externalconnection-post-groups.md)|[externalGroup](../resources/externalgroup.md)|Create a new **externalGroup** object.|
|[Delete externalGroup](../api/externalgroup-delete.md)|None|Delete an **externalGroup** object.|
|[Create members](../api/externalgroup-post-members.md)|[externalGroupMember](../resources/externalgroupmember.md)|Create a new **externalGroupMember** object.|

## Properties

| Property    | Type   | Description                                                                                                              |
|:------------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
| id          | String | The unique ID of the external group within a connection. It must be alphanumeric and can be up to 128 characters long. |
| displayName | String | The friendly name of the external group. Optional.                                                                       |
| description | String | The description of the external group. Optional.                                                                         

## Relationships

| Relationship | Type                                                                  | Description                                               |
|:-------------|:----------------------------------------------------------------------|:----------------------------------------------------------|
| members      | [externalGroupMember](../resources/externalgroupmember.md) collection | A member added to an **externalGroup**. You can add Azure Active Directory users, Azure Active Directory groups, or other **externalGroups** as members. |

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalGroup",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.externalGroup",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String"
}
```
