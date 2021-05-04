---
title: "requestSchedule resource type"
description: "An request schedule can be included in an access package assignment request and is present in an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# requestSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment request is created by a user who wants to obtain an access package assignment. This request can include a schedule for when the user would like to have an assignment.  An access package assignment that results from such a request also has a schedule.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|expiration|[expirationPattern](expirationpattern.md)|When the access should expire.|
|recurrence|[patternedRecurrence](patternedrecurrence.md)|For recurring access. Not used at present.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.requestSchedule"
}-->

```json
{
    "startDateTime": "2020-08-11T23:06:53.307Z",
    "expiration": {
        "endDateTime": "2020-09-10T23:06:53.307Z",
        "type": "afterDateTime"
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "requestSchedule resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


