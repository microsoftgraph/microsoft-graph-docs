---
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
---

# credentialUserRegistrationDetails resource type

Provides the details of self-service password reset and multi-factor authentication (MFA) registration for a given tenant. This API provides the registration usage for all registered users for self-service password reset and multi-factor authentication (MFA) capabilities. Details include user info, status of registration, authentication method used etc.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
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


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
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
<!-- {
  "type": "#page.annotation",
  "description": "credentialUserRegistrationDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
