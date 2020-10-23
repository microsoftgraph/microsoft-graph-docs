---
title: "scopedRoleMembership resource type"
description: "A scoped-role membership describes a user's membership of a directory role, that is further scoped to an Administrative Unit (AU).  This provides a mechanism to allow a tenant-wide company adminsistrator to delegate administrative privileges to a user to manage users and groups in a subset of the organization (the subset being defined by an AU)."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "abhijeetsinha"
---

# scopedRoleMembership resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A scoped-role membership describes a user's membership of a directory role, that is further scoped to an Administrative Unit (AU).  This provides a mechanism to allow a tenant-wide company administrator to delegate administrative privileges to a user to manage users and groups in a subset of the organization (the subset being defined by an AU).

## Methods
Direct queries to this resource are not supported.  Please see the [administrative units](administrativeunit.md) topic to see information on how to query for scoped-role memberships, as well as adding and removing scoped-role memberships.

## Properties
| Property   | Type | Description |
|:---------------|:--------|:----------|
|administrativeUnitId|string|Unique identifier for the administrative unit that the directory role is scoped to|
|id|string| Unique identifier for the scoped-role membership. Read-only.|
|roleId|string| Unique identifier for the directory role that the member is in.|
|roleMemberInfo|[identity](identity.md)| Role member identity information. Represents the user that is a member of this scoped-role.|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.scopedRoleMembership"
}-->

```json
{
  "administrativeUnitId": "string",
  "id": "string (identifier)",
  "roleId": "string",
  "roleMemberInfo": {"@odata.type": "microsoft.graph.identity"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "scopedRoleMembership resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


