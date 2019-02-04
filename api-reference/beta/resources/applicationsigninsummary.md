---
title: "applicationSignInDetailedSummary resource type"
description: "Describes the applicationSignInSummary resource of the Microsoft Graph API"
localization_priority: Normal
author: arvinh-msft
ms.prod: "microsoft-identity-platform"
---

# applicationSignInSummary resource type

Retrieve the number of successful and failed sign-ins for an application. 

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get applicationSignInSummary](../api/applicationsigninsummary-get.md) | [applicationSignInSummary](applicationsigninsummary.md) | Read properties and relationships of applicationSignInSummary object. |
| [Update](../api/applicationsigninsummary_update.md) | [applicationSignInSummary](applicationsigninsummary.md) | Update applicationSignInSummary object. |
| [Delete](../api/applicationsigninsummary_delete.md) | None | Delete applicationSignInSummary object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appDisplayName|String|Name of the application that the user signed into.|
|appId|String| 	ID of the application that the user signed into.|
|failedSignInCount|Int64|Count of Fialed SignIns made by the application.|
|successPercentage|Int32|Percentage of successful sign-ins made by the application.|
|successfulSignInCount|Int64|Count of successful sign-ins made by the application.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.applicationSignInSummary"
}-->

```json
{
  "appDisplayName": "String",
  "appId": "String (identifier)",
  "failedSignInCount": 1024,
  "successPercentage": 1024,
  "successfulSignInCount": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "applicationSignInSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->