---
title: "groupLifecyclePolicy resource type"
description: "Represents a lifecycle policy for a Microsoft 365 group."
localization_priority: Normal
author: "Jordanndahl"
ms.prod: "groups"
doc_type: resourcePageType
---

# groupLifecyclePolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a lifecycle policy for a Microsoft 365 group. A group lifecycle policy allows administrators to set an expiration period for groups. For example, after 180 days, a group expires. When a group reaches its expiration, owners of the group are required to renew their group within a time interval defined by the administrator. Once renewed, the group expiration is extended by the number of days defined in the policy. For example, the group's new expiration is 180 days after renewal. If the group is not renewed, it expires and is deleted. The group can be restored within a period of 30 days from deletion.

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Get groupLifecyclePolicy](../api/grouplifecyclepolicy-get.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) |Read properties and relationships of a groupLifecyclePolicy object.|
|[List groupLifecyclePolicies](../api/grouplifecyclepolicy-list.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md) collection | List all the groupLifecyclePolicies. |
|[Update groupLifecyclePolicy](../api/grouplifecyclepolicy-update.md) | [groupLifecyclePolicy](grouplifecyclepolicy.md)	| Update a groupLifecyclePolicy object. |
|[Delete groupLifecyclePolicy](../api/grouplifecyclepolicy-delete.md) | None | Delete a groupLifecyclePolicy object. |
|[Add a group to a groupLifecyclePolicy](../api/grouplifecyclepolicy-addgroup.md)|None| Add a group to a lifecycle policy |
|[Remove a group from a groupLifecyclePolicy](../api/grouplifecyclepolicy-removegroup.md)|None| Remove a group to a lifecycle policy. |
|[Renew a group](../api/grouplifecyclepolicy-renewgroup.md)|None| Renew a group's expiration date. |

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|alternateNotificationEmails|String| List of email address to send notifications for groups without owners. Multiple email address can be defined by separating email address with a semicolon. |
|groupLifetimeInDays|Int32| Number of days before a group expires and needs to be renewed. Once renewed, the group expiration is extended by the number of days defined. |
|id|String| A unique identifier for a policy. Read-only.|
|managedGroupTypes|String| The group type for which the expiration policy applies. Possible values are **All**, **Selected** or **None**. |

## Relationships

None.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupLifecyclePolicy"
}-->

```json
{
  "alternateNotificationEmails": "String",
  "groupLifetimeInDays": 180,
  "id": "Guid (identifier)",
  "managedGroupTypes": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupLifecyclePolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


