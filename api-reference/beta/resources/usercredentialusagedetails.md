---
title: "userCredentialUsageDetails resource type"
description: "Represents the self-service password reset usage for a given tenant."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# userCredentialUsageDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the self-service password reset usage for a given tenant. Details include user information, status of the reset, and the reason for failure.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List userCredentialUsageDetails](../api/reportroot-list-usercredentialusagedetails.md) | userCredentialUsageDetails | Read properties and relationships of a userCredentialUsageDetails object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethod | string | Represents the authentication method that the user used. Possible values are: `email`, `mobileSMS`, `mobileCall`, `officePhone`, `securityQuestion` (only used for self-service password reset), `appNotification`, `appCode`, and `alternateMobileCall` (supported only in registration). |
| eventDateTime | DateTimeOffset | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. |
| failureReason | String | Provides the failure reason for the corresponding reset or registration workflow. |
| feature | string | Possible values are: `registration` and `reset`. |
| id | String | Read-only. The unique identifier for the activity. Read-only.|
| isSuccess | Boolean | Indicates success or failure of the workflow. |
| userDisplayName | String | User name of the user performing the reset or registration workflow. |
| userPrincipalName | String | User principal name of the user performing the reset or registration workflow. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userCredentialUsageDetails",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "feature":"string",
  "userPrincipalName":"String",
  "userDisplayName": "String",
  "isSuccess" : true,
  "authMethod": "string",
  "failureReason": "String",
  "eventDateTime" : "DateTimeOffset"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userCredentialUsageDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

