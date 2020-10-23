---
title: "alertHistoryState resource type"
description: "Stores changes made to alerts."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# alertHistoryState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stores changes made to alerts.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appId|String| The Application ID of the calling application that submitted an update (PATCH) to the alert. The appId should be extracted from the auth token and not entered manually by the calling application. |
|assignedTo|String| UPN of user the alert was assigned to (note: alert.assignedTo only stores the last value/UPN). |
|comments|String collection|Comment entered by signed-in user.|
|feedback|String| Analyst feedback on the alert in this update. Possible values are: `unknown`, `truePositive`, `falsePositive`, `benignPositive`.|
|status|String| Alert status value (if updated). Possible values are: `unknown`, `newAlert`, `inProgress`, `resolved`, `dismissed`.|
|updatedDateTime|DateTimeOffset| Date and time of the alert update. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|user|String| UPN of the signed-in user that updated the alert (taken from the bearer token - if in user/delegated auth mode). |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.alertHistoryState",
  "baseType": null
}-->

```json
{
  "appId": "String",
  "assignedTo": "String",
  "comments": ["String"],
  "feedback": "String",
  "status": "String",
  "updatedDateTime": "String (timestamp)",
  "user": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "alertHistoryState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

