---
title: "applicationSignInDetailedSummary resource type"
description: "Describes the applicationSignInDetailSummary resource of the Microsoft Graph API"
localization_priority: Normal
author: arvinh-msft
ms.prod: "microsoft-identity-platform"
---

# applicationSignInDetailedSummary resource type
Retrieve the number of sign ins per application.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get applicationSignInDetailedSummary](../api/applicationsignindetailedsummary_get.md) | [applicationSignInDetailedSummary](applicationsignindetailedsummary.md) | Read properties and relationships of applicationSignInDetailedSummary object. |
| [Update](../api/applicationsignindetailedsummary_update.md) | [applicationSignInDetailedSummary](applicationsignindetailedsummary.md) | Update applicationSignInDetailedSummary object. |
| [Delete](../api/applicationsignindetailedsummary_delete.md) | None | Delete applicationSignInDetailedSummary object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|aggregatedEventDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|appDisplayName|String|Name of the application that the user signed into.|
|appId|String|ID of the application that the user signed into.|
|id|String| Indicates unique ID representing the sign-in activity.|
|signInCount|Int64|Count of SignIns made by the application.|
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