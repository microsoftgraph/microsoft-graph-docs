---
title: "credentialUserRegistrationDetails resource type"
description: "Provide the details of self-service password reset and multi-factor authentication (MFA) registration for a given tenant."
localization_priority: Normal
author: "dkershaw"
ms.prod: "identity and access reports"
doc_type: "resourcePageType"
---

# credentialUserRegistrationDetails resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **credentialUserRegistrationDetails** resource represents the registration usage for all registered users for self-service password reset and multi-factor authentication (MFA) capabilities. Details include user information, status of registration, and the authentication method used.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get credentialUserRegistrationDetails](../api/reportroot-list-credentialuserregistrationdetails.md) | credentialUserRegistrationDetails | Read properties and relationships of a credentialUserRegistrationDetails object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethods | string collection | Possible values are: `email`, `mobilePhone`, `officePhone`, `securityQuestion`, `appNotification`, `appCode`, `alternateMobilePhone` |
| id | String | Unique ID for the activity. |
| isCapable | Boolean | Indicates whether the user is ready to perform self-service password reset or MFA. |
| isEnabled | Boolean | Indiciates whether the user enabled to perform self-service password reset. |
| isMfaRegistered | Boolean | Indiciates whether the user is Mfa Registered. |
| isRegistered | Boolean | Indicates whether the user has registered auths to perform self service password reset. |
| userDisplayName | String | Provides the user name of the corresponding user. |
| userPrincipalName | String | Provides the user principal name of the corresponding user. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
  "userPrincipalName":"abc@cd.com",
  "userDisplayName": "abc",
  "authMethods": ["email", "mobilePhone"],
  "isRegistered" : false,
  "isEnabled" : true,
  "isCapable" : false,
  "isMfaRegistered" : true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
