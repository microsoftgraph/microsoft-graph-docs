---
title: "riskyUser resource type"
description: "risky users item"
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# riskyUser resource type

Namespace: microsoft.graph

Represents Azure AD users who are at risk. Azure AD continually evaluates user risk based on various signals and machine learning. This API provides programmatic access to all at-risk users in your Azure AD.

For more information about risk events, see [Azure Active Directory Identity Protection](/azure/active-directory/identity-protection/overview-identity-protection).

>**Note:** Using the riskyUsers API requires an Azure AD Premium P2 license.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List riskyUsers](../api/riskyuser-list.md)|[riskyUser](../resources/riskyuser.md) collection|Get a list of the **riskyUser** objects and their properties.|
|[Get riskyUser](../api/riskyuser-get.md)|[riskyUser](../resources/riskyuser.md)|Read the properties and relationships of a **riskyUser** object.|
|[Dismiss a riskyUser](../api/riskyuser-dismiss.md)|None|Dismiss the risk of one or more **riskyUser** objects. |
|[Confirm a riskyUser as compromised](../api/riskyuser-confirmcompromised.md)|None|Confirm one or more **riskyUser** objects as compromised.|
|[List history](../api/riskyuser-list-history.md)|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection|Get the **riskyUserHistoryItems** from the history navigation property.|
|[Get history](../api/riskyuser-get-riskyuserhistoryitem.md)|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md)|Read the properties and relationships of a [riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique ID of the user at risk.|
|isDeleted|Boolean|Indicates whether the user is deleted. Possible values are: `true`, `false`|
|isProcessing|Boolean|Indicates wehther a user's risky state is being processed by the backend|
|riskDetail|riskDetail|Details of the detected risk. Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskLastUpdatedDateTime|DateTimeOffset|The date and time that the risky user was last updated.|
|riskLevel|riskLevel|Level of the detected risky user. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|State of the user's risk. Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|userDisplayName|String|Risky user display name.|
|userPrincipalName|String|Risky user principal name.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|history|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection|	The activity related to user risk level change|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyUser",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyUser",
  "id": "String (identifier)",
  "isDeleted": "Boolean",
  "isProcessing": "Boolean",
  "riskLastUpdatedDateTime": "String (timestamp)",
  "riskLevel": "String",
  "riskState": "String",
  "riskDetail": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String"
}
```