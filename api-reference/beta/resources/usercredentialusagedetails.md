<<<<<<< HEAD
---
title: "userCredentialUsageDetails resource type"
description: "Represents the self-service password reset usage for a given tenant."
localization_priority: Normal
author: "khotz"
ms.prod: "reports"
doc_type: "resourcePageType"
=======

---
author: dkershaw
localization_priority: Normal
ms.prod: identity and access reports
ms.date: 04/25/2019
>>>>>>> master
---

# userCredentialUsageDetails resource type

<<<<<<< HEAD
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the self-service password reset usage for a given tenant. Details include user information, status of the reset, and the reason for failure.
=======
Provides the details of self-service password reset usage for a given tenant. Details include User, status of the reset, reason for failure etc.
>>>>>>> master

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
<<<<<<< HEAD
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

=======
| [Get userCredentialUsageDetails](../api/usercredentialusagedetails_get.md) | [userCredentialUsageDetails](usercredentialusagedetails.md) | provides the usage details on self-service password reset for the last 30 days. Details include User, status of the reset, reason for failure etc. |


## Properties
| Property     | Type        | Description | 
|:-------------|:------------|:------------|
|authMethod|string|Provides the authentication method used by the user when performing a password reset or multi-factor authentication. Possible values are: `email`, `mobileSMS`, `mobilePhone`, `officePhone`, `securityQuestion`, `appNotification`, `appNotificationCode`, `unknownFutureValue`. Check out the [Enum values](#Enum-values-Details) section below.|
|failureReason|String|Provides the failure reason for the corresponding reset.|
|feature|string| Possible values are: `registration`, `reset`, `unknownFutureValue`. Check out the [Enum values](#Enum-values-Details) section below. |
|id|String| Read-only.|Unique Id of the activity.|
|isSuccess|Boolean|A flag that indicates success or failure.|
|userDisplayName|String|User name of the user performing the reset.|
|userPrincipalName|String|User Principal Name of the user performing the reset.|

## Enum values Details
### Auth Method Property
| Enum Name | Value | Additional Details
| :---------|:-------|:----------
email|0
mobileSMS|1
mobilePhone|2
officePhone|3
securityQuestion|4|can only be used for self-service password reset
appNotification|5
appNotificationCode|6
appNotificationAndCode|7
appPassword|8|can only be used for multi-factor authentication
fido|9|can only be registered through combined security info registration
alternateMobilePhone|10
mobilePhoneAndSMS|11


### Feature Property
| Enum Name | Value | Description
| :---------|:-------|:----------
registration|0| Indicates registration usage data
reset|1| Indicates reset usage data

## Relationships

None


## JSON representation


>>>>>>> master
The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
<<<<<<< HEAD
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
=======
  "@odata.type": "microsoft.graph.userCredentialUsageDetails"
}-->

```json
  {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "feature":"registration",
      "userPrincipalName":"abc@cd.com",
      "userDisplayName": "abc",
      "isSuccess" : true,
      "authMethod": "email",
      "failureReason": "User contacted an admin after trying the email verification option",
      "eventDateTime" : "2019-04-01T00:00:00Z"
  }

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
>>>>>>> master
<!-- {
  "type": "#page.annotation",
  "description": "userCredentialUsageDetails resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
<<<<<<< HEAD
}-->
=======
}-->
>>>>>>> master
