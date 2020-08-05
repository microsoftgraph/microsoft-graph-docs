---
<<<<<<< HEAD
title: "credentialUsageSummary resource type"
description: "Represents the current state of how many users in your organization are using self-service password reset capabilities."
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

# credentialUsageSummary resource type

<<<<<<< HEAD
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are using self-service password reset capabilities.
=======
Provides the summary of self-service password reset usage for a given tenant. This API provides the current state of how many users in your organization are using self-service password reset capabilities.
>>>>>>> master

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
<<<<<<< HEAD
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
=======
| [Get credentialUsageSummary](../api/credentialusagesummary_get.md) | [credentialUsageSummary](credentialusagesummary.md) | Read properties and relationships of credentialUsageSummary object. |


## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|authMethod|string| Provides the authentication method available for registration or used by end users during password resets or registrations. Possible values are: `email`, `mobileSMS`, `mobilePhone`, `officePhone`, `securityQuestion`, `appNotification`, `appNotificationCode`.Check out the [Enum values](#Enum-values-Details) section below.|
|failureActivityCount|Int64| Provides the count of failed resets or registration data.|
|feature|string| Povides either the registration data or reset data. By default, both will be shown. Possible values are: `registration`, `reset`. Check out the [Enum values](#Enum-values-Details) section below.|
|id|String| Read-only.|Unique Id of the activity.|
|successfulActivityCount|Int64|Provides the count of successful registrations or resets.|

## Enum values Details
### Auth Method Property
| Enum Name | Value | Description
| :---------|:-------|:----------
email|0|
mobileSMS|1|
mobilePhone|2|
officePhone|3|
securityQuestion|4|can only be used for self-service password reset|
appNotification|5|
appNotificationCode|6|
appNotificationAndCode|7|
appPassword|8|can only be used for multi-factor authentication|
fido|9|can only be registered through combined security info registration.|
alternateMobilePhone|10|
mobilePhoneAndSMS|11|

### Feature Property

| Enum Name | Value | Description
| :---------|:-------|:----------
registration|0| Indicates registration usage data
reset|1| Indicates reset usage data

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
=======
  "@odata.type": "microsoft.graph.credentialUsageSummary"
}-->

```json
    {
      "id" : "d3590ed6-52b3-4102-aeff-aad2292ab01234",
      "feature":"registration",
      "successfulActivityCount":"12345",
      "failureActivityCount": "123",
      "authMethod": "email",
    }

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
>>>>>>> master
<!-- {
  "type": "#page.annotation",
  "description": "credentialUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
<<<<<<< HEAD
}-->
=======
}-->
>>>>>>> master
