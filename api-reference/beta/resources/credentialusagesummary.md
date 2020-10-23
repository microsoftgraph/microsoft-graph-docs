---
title: "credentialUsageSummary resource type"
description: "Represents the current state of how many users in your organization are using self-service password reset capabilities."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# credentialUsageSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are using self-service password reset capabilities.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getCredentialUsageSummary](../api/reportroot-getcredentialusagesummary.md) | credentialUsageSummary | Read properties and relationships of a credentialUsageSummary object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethod | string | Represents the authentication method that the user used. Possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion` (only used for self-service password reset), `appNotification`, `appCode`, and  `alternateMobileCall` (only supported for registration). |
| failureActivityCount | Int64 | Provides the count of failed resets or registration data. |
| feature | string | Defines the feature to report. Possible values are: `registration` and `reset`. |
| id | String | The unique identifier for the activity. Read-only. |
| successfulActivityCount | Int64 | Provides the count of successful registrations or resets. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUsageSummary",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "feature":"string",
  "successfulActivityCount":"Int64",
  "failureActivityCount": "Int64",
  "authMethod": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credentialUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

