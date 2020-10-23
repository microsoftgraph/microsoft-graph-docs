---
title: "assignedPlan resource type"
description: "The **assignedPlans** property of both the user entity and the organization entity is a collection of **assignedPlan**."
localization_priority: Normal
author: "krbain"
ms.prod: ""
doc_type: resourcePageType
---

# assignedPlan resource type

Namespace: microsoft.graph

The **assignedPlans** property of both the [user](user.md) entity and the [organization](organization.md) entity is a collection of **assignedPlan**.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedDateTime|DateTimeOffset|The date and time at which the plan was assigned; for example: 2013-01-02T19:32:30Z. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|capabilityStatus|String|For example, “Enabled”.|
|service|String|The name of the service; for example, “Exchange”.|
|servicePlanId|Guid|A GUID that identifies the service plan.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.assignedPlan"
}-->

```json
{
  "assignedDateTime": "String (timestamp)",
  "capabilityStatus": "string",
  "service": "string",
  "servicePlanId": "guid"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "assignedPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

