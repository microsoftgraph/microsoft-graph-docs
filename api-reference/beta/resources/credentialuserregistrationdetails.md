---
<<<<<<< HEAD
title: "credentialUserRegistrationDetails resource type"
description: "Represents the details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "resourcePageType"
=======
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
>>>>>>> master
---

# credentialUserRegistrationDetails resource type

<<<<<<< HEAD
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the usage of self-service password reset and multi-factor authentication (MFA) for all registered users. Details include user information, status of registration, and the authentication method used.
=======
Provides the details of self-service password reset and multi-factor authentication (MFA) registration for a given tenant. This API provides the registration usage for all registered users for self-service password reset and multi-factor authentication (MFA) capabilities. Details include user info, status of registration, authentication method used etc.
>>>>>>> master

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
<<<<<<< HEAD
| [List credentialUserRegistrationDetails](../api/reportroot-list-credentialuserregistrationdetails.md) | credentialUserRegistrationDetails collection | Get a list of [credentialUserRegistrationDetails](../resources/credentialuserregistrationdetails.md) objects for a given tenant.
 |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| authMethods | registrationAuthMethod collection | Represents the authentication method that the user used. Possible values are: `email`, `mobilePhone`, `officePhone`, `securityQuestion` (only used for self-service password reset), `appNotification`, `appCode`, and `alternateMobilePhone` (supported only in registration). |
| id | String | The unique identifier for the activity. Read-only.|
| isCapable | Boolean | Indicates whether the user is ready to perform self-service password reset or MFA. |
| isEnabled | Boolean | Indiciates whether the user enabled to perform self-service password reset. |
| isMfaRegistered | Boolean | Indiciates whether the user is registered for MFA. |
| isRegistered | Boolean | Indicates whether the user has registered any authentication methods for self-service password reset. |
| userDisplayName | String | Provides the user name of the corresponding user. |
| userPrincipalName | String | Provides the user principal name of the corresponding user. |

## Relationships

None.
=======
| [Get credentialUserRegistrationDetails](../api/credentialuserregistrationdetails_get.md) | [credentialUserRegistrationDetails](credentialuserregistrationdetails.md) | Read properties and relationships of credentialUserRegistrationDetails object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|authMethods|String|Provides the authentication method used by the user when performing a password reset or MFA. Possible values are: `email`, `mobileSMS`, `mobilePhone`, `officePhone`, `securityQuestion`, `appNotification`, `appNotificationCode`, `unknownFutureValue`. Check out the [Enum value details](#Enum-values-Details) below.|
|id|String| Read-only.|Unique Id for the activity
|isCapable|Boolean|A flag that says if the user is ready to perform self-service password reset or multi-factor authentication (MFA).|
|isEnabled|Boolean|Provides the list of users who are ready to perform self-service password reset.|
|isRegistered|Boolean|A flag that says if the user is registered or not.|
|userDisplayName|String| Provides the user name of the corresponding user.|
|userPrincipalName|String|Provides the user principal name of the corresponding user.|

## Enum values Details
### Auth Method Property
| Enum Name | Value | Additional Details
| :---------|:-------|:----------
email|0| 
mobileSMS|1|
mobilePhone|2|
officePhone|3|
securityQuestion|4|can only be used for self-service password reset|
appNotification|5|
appNotificationCode|6|
appNotificationAndCode|7|
appPassword|8|can only be used for multi-factor authentication (MFA)|
fido|9|can only be registered through combined security info registration.|
alternateMobilePhone|10|
mobilePhoneAndSMS|11|

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
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id" : "String",
  "userPrincipalName":"String",
  "userDisplayName": "String",
  "authMethods": ["string"],
  "isRegistered" : false,
  "isEnabled" : true,
  "isCapable" : false,
  "isMfaRegistered" : true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
=======
  "@odata.type": "microsoft.graph.credentialUserRegistrationDetails"
}-->

```json

 
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "userPrincipalName":"abc@cd.com",
      "userDisplayName": "abc",
      "authMethods": {"email", "mobileSMS"},
      "isRegistered" : false,
      "isEnabled" : true,
      "isCapable" : false,
      "isMfaRegistered" : true
    }
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
>>>>>>> master
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
<<<<<<< HEAD
}-->
=======
}-->
>>>>>>> master
