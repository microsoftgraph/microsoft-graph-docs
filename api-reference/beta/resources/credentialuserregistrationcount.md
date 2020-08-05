---
<<<<<<< HEAD
title: "credentialUserRegistrationCount resource type"
description: "Represents the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication capabilities."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "resourcePageType"
---

# credentialUserRegistrationCount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication capabilities.
=======
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---
# credentialUserRegistrationCount resource type

Provides the summary of self-service password reset and multi-factor authentication registration for a given tenant. This API provides the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication capabilities.
>>>>>>> master

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
<<<<<<< HEAD
| [getCredentialUserRegistrationCount](../api/reportroot-getcredentialuserregistrationcount.md) | credentialUserRegistrationCount collection | Report the current state of how many users in your organization are registered for self-service password reset and multi-factor authentication (MFA) capabilities. |
=======
| [Get credentialUserRegistrationCount](../api/credentialuserregistrationcount_get.md) | [credentialUserRegistrationCount](credentialuserregistrationcount.md) | Read properties and relationships of credentialUserRegistrationCount object. |

>>>>>>> master

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
<<<<<<< HEAD
| id | String | The unique identifier for the activity. Read-only. |
| totalUserCount | Int64 | Provides the total user count in the tenant. |
| userRegistrationCounts | [userRegistrationCount](userregistrationcount.md) collection | A collection of registration count and status information for users in your tenant. |

## Relationships

None.
=======
|id|String| Read-only.|Unique Id of the activity.|
|totalUserCount|Int64|Provides the total user count in the tenant.|
|userRegistrationCounts|[userRegistrationCount](userregistrationcount.md) collection| Provides the # of registered Users count.|

## Relationships

None

>>>>>>> master

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
<<<<<<< HEAD
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
=======
  "@odata.type": "microsoft.graph.credentialUserRegistrationCount"
}-->

```json
  {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "totalUserCount" : 23123,
      "userRegistrationCounts" :
      [
        { "userRegistrationStatus":"registered", "userRegistrationCount": 23423 },
        { "userRegistrationStatus":"enabled", "userRegistrationCount": 4234 },
        { "userRegistrationStatus":"capable", "userRegistrationCount": 323 },
        { "userRegistrationStatus":"mfaRegistered", "userRegistrationCount": 33 }
      ]
    }

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
>>>>>>> master
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationCount resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
<<<<<<< HEAD
}-->
=======
}-->
>>>>>>> master
