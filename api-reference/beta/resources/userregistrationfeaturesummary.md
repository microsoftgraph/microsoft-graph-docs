---
title: "userRegistrationFeatureSummary resource type"
description: "Summary of users capable of Multi-Factor Authentication, Self-Service Password Reset, and Passwordless authentication."
author: "danielwood95"
localization_priority: Normal
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationFeatureSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current state of how many users in your organization are capable of multi-factor authentication, self-service password reset and passwordless authentication.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [usersRegisteredByFeature](../api/authenticationmethodsroot-usersregisteredbyfeature.md) | userRegistrationFeatureSummary | Get the number of users capable of Multi-Factor Authentication, Self-Service Password Reset, and Passwordless authentication. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users accounts, excluding those that are blocked|
|userRegistrationFeatureCounts|[userRegistrationFeatureCount](../resources/userregistrationfeaturecount.md) collection|Number of users registered or capable for Multi-Factor Authentication, Self-Service Password Reset and Passwordless Authentication.|
|userRoles|includedUserRoles|User role type. Possible values are: `all`, `privilegedAdmin`, `admin`, `user`.|
|userTypes|includedUserTypes|User type. Possible values are: `all`, `member`, `guest`.|

The value `privilegedAdmin` consists of the following privileged admin roles:

* Global admin
* Security admin
* Conditional Access admin
* Exchange admin
* SharePoint admin
* Helpdesk admin
* Billing admin
* User admin
* Authentication admin

The value `admin` includes all Azure AD admin roles. 

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userRegistrationFeatureSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationFeatureSummary",
  "totalUserCount": "Integer",
  "userTypes": "String",
  "userRoles": "String",
  "userRegistrationFeatureCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationFeatureCount"
    }
  ]
}
```
