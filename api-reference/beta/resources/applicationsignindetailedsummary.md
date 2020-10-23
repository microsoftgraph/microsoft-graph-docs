---
title: "applicationSignInDetailedSummary resource type - Microsoft Graph API"
description: "Represents a detailed summary of an application sign-in."
localization_priority: Normal
author: "sureshja"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# applicationSignInDetailedSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a detailed summary of an application sign-in.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get applicationSignInDetailedSummary](../api/applicationsignindetailedsummary-get.md) | [applicationSignInDetailedSummary](applicationsignindetailedsummary.md) | Read the properties and relationships of an **applicationSignInDetailedSummary** object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|aggregatedEventDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|appDisplayName|String|Name of the application that the user signed in to.|
|appId|String|ID of the application that the user signed in to.|
|id|String| A unique ID representing the sign-in activity.|
|signInCount|Int64|Count of sign-ins made by the application.|
|status|[signInStatus](signinstatus.md)|Details of the sign-in status.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationSignInDetailedSummary"
}-->

```json
{
  "aggregatedEventDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "appId": "String",
  "id": "String (identifier)",
  "signInCount": 1024,
  "status": {"@odata.type": "microsoft.graph.signInStatus"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationSignInDetailedSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


