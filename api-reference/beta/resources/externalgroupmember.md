---
title: "externalGroupMember resource type"
description: "Represents a member of an externalGroup used to set permissions on external content added to Microsoft Graph."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# externalGroupMember resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a member of an [externalGroup](externalgroup.md) used to set permissions on external content added to Microsoft Graph.

## Methods

| Method                                                              | Return type         | Description                              |
|:--------------------------------------------------------------------|:--------------------|:-----------------------------------------|
| [Create externalGroupMember](../api/externalgroup-post-members.md) | externalGroupMember | Create a new **externalGroupMember** object. |
| [Delete externalGroupMember](../api/externalgroupmember-delete.md)  | None                | Delete an **externalGroupMember** object.   |

## Properties

| Property       | Type                    | Description                                                          |
|:---------------|:------------------------|:---------------------------------------------------------------------|
| id             | String                  | The unique ID of the member. It would be the objectId in case of Azure Active Directory users or groups and the **id** property of the **externalGroup** in case of external groups.                                    |
| type           | externalGroupMemberType | The type of member added to the external group. Possible values are: `user` or `group` when the **identitySource** is `azureActiveDirectory` and just `group` when the **identitySource** is `external`. |
| identitySource | identitySourceType      | The identity source that the member belongs to. Possible values are: `azureActiveDirectory`, `external`.                                                                                         |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalGroupMember",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.externalGroupMember",
  "id": "String (identifier)",
  "type": "String",
  "identitySource": "String"
}
```
