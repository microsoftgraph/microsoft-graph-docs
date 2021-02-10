---
title: "userRegistrationMethodSummary resource type"
description: "Summary of number of users registered for each authentication method."
author: "danielwood95"
localization_priority: Normal
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRegistrationMethodSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Summary of number of users registered for each authentication method.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [usersRegisteredByMethod](../api/authenticationmethodsroot-usersregisteredbymethod.md) | userRegistrationMethodSummary | Get the number of users registered for each authentication method. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|totalUserCount|Int64|Total number of users in the tenant.|
|userRegistrationMethodCounts|[userRegistrationMethodCount](../resources/userregistrationmethodcount.md) collection|Number of users registered for each authentication method.|
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
  "@odata.type": "microsoft.graph.userRegistrationMethodSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRegistrationMethodSummary",
  "totalUserCount": "Integer",
  "userTypes": "String",
  "userRoles": "String",
  "userRegistrationMethodCounts": [
    {
      "@odata.type": "microsoft.graph.userRegistrationMethodCount"
    }
  ]
}
```
