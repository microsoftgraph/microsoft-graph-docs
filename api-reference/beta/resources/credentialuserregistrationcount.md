---
title: "credentialUserRegistrationCount resource type"
description: "Represents the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication capabilities."
localization_priority: Normal
author: "besiler"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# credentialUserRegistrationCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication capabilities.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [getCredentialUserRegistrationCount](../api/reportroot-getcredentialuserregistrationcount.md) | credentialUserRegistrationCount collection | Report the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication (MFA) capabilities. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| id | String | The unique identifier for the activity. Read-only. |
| totalUserCount | Int64 | Provides the total user count in the tenant. |
| userRegistrationCounts | [userRegistrationCount](userregistrationcount.md) collection | A collection of registration count and status information for users in your tenant. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "totalUserCount" : 23123,
  "userRegistrationCounts" :
  [
    { "registrationStatus":"registered", "registrationCount": 23423 },
    { "registrationStatus":"enabled", "registrationCount": 4234 },
    { "registrationStatus":"capable", "registrationCount": 323 },
    { "registrationStatus":"mfaRegistered", "registrationCount": 33 }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationCount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

