---
title: "riskyUser resource type"
description: "Represents Azure AD users who are at risk. Azure AD continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Azure AD."
author: "cloudhandler"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
---

# riskyUser resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Azure AD users who are at risk. Azure AD continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Azure AD.

For more information about risk events, see [Azure Active Directory Identity Protection](https://azure.microsoft.com/en-us/documentation/articles/active-directory-identityprotection/).

>**Note:** Using the riskyUsers API requires an Azure AD Premium P2 license.

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List riskyUsers](../api/riskyusers-list.md) | [riskyUser](riskyuser.md) collection|List risky users and their properties.|
|[Get riskyUser](../api/riskyusers-get.md) | [riskyUser](riskyuser.md)|Get a specific risky user and its properties.|
|[List history](../api/riskyuser-list-history.md) | [riskyUserHistoryItem](riskyuserhistoryitem.md) collection|Get the risk history of an Azure AD user.|
|[Confirm riskyUsers compromised](../api/riskyusers-confirmcompromised.md)|None |Confirm a risky user as compromised.|
|[Dismiss riskyUsers](../api/riskyusers-dismiss.md)|None | Dismiss the risk of a risky user.|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|`id`|`string`|Unique id of the user at risk|
|`isDeleted`|`bool`|Indicates whether the user is deleted. Possible values are: `true`, `false`|
|`isGuest`|`bool`|Indicates whether the user is a guest user. Possible values are: `true`, `false`. True if user’s identity lies outside of the tenant in consideration. This user could be a B2B or a B2C user with identity in Azure AD, MSA or 3rd party identity provider. False if user’s identity lies inside the tenant in consideration|
|`isProcessing`|`bool`|Indicates wehther a user's risky state is being processed by the backend|
|`riskLastUpdatedDateTime`|`datetime`|The date and time that the risky user was last updated|
|`riskLevel`|`riskLevel`| The possible values are low, medium, high, hidden, none, unknownFutureValue.  |
|`riskState`|`riskState`| The possible values are none, confirmedSafe, remediated, atRisk, unknownFutureValue.  |
|`riskDetail`|`riskDetail`| The possible values are none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, hidden, adminConfirmedUserCompromised, unknownFutureValue.  |
|`userDisplayName`|`string`|Risky user display name|
|`userPrincipalName`|`string`|Risky user principal name|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|history|[riskyUserHistoryItem](riskyuserhistoryitem.md) collection|Represents the risk history of an Azure AD user as determined by Azure AD Identity Protection. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    
  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyUser"
}-->

```json
{
"id": "string",
"riskLastUpdatedDateTime": "dateTimeOffset",
"isGuest": "boolean",
"isProcessing": "boolean",
"isDeleted": "boolean",
"riskDetail":  "string",
"riskLevel":  "string",
"riskState":  "string",
"userDisplayName": "string",
"userPrincipalName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "riskyusers resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
