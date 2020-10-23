---
title: "riskyUserHistoryItem resource type"
description: "risky user history item"
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# riskyUserHistoryItem resource type

Namespace: microsoft.graph

Represents the risk history of an Azure AD user as determined by Azure AD Identity Protection.


Inherits from [riskyUser](../resources/riskyuser.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List history](../api/riskyuser-list-history.md)|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection|Get the riskyUserHistoryItems from the history navigation property.|
|[Get history](../api/riskyuser-get-riskyuserhistoryitem.md)|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md)|Read the properties and relationships of a [riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|[riskUserActivity](../resources/riskuseractivity.md)|The activity related to user risk level change.|
|id|String|Inherited from [entity](../resources/entity.md)|
|initiatedBy|String|The id of actor that does the operation.|
|isDeleted|Boolean| Inherited from [riskyUser](../resources/riskyuser.md)|
|isProcessing|Boolean| Inherited from [riskyUser](../resources/riskyuser.md)|
|riskDetail|riskDetail|Inherited from [riskyUser](../resources/riskyuser.md). Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.|
|riskLastUpdatedDateTime|DateTimeOffset|Inherited from [riskyUser](../resources/riskyuser.md)|
|riskLevel|riskLevel|Inherited from [riskyUser](../resources/riskyuser.md). Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`.|
|riskState|riskState|Inherited from [riskyUser](../resources/riskyuser.md). Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|userDisplayName|String|Inherited from [riskyUser](../resources/riskyuser.md)|
|userId|String|The id of the user.|
|userPrincipalName|String|Risky user principal name. Inherited from [riskyUser](../resources/riskyuser.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|history|[riskyUserHistoryItem](../resources/riskyuserhistoryitem.md) collection| Inherited from [riskyUser](../resources/riskyuser.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.riskyUserHistoryItem",
  "baseType": "microsoft.graph.riskyUser",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskyUserHistoryItem",
  "id": "String (identifier)",
  "isDeleted": "Boolean",
  "isProcessing": "Boolean",
  "riskLastUpdatedDateTime": "String (timestamp)",
  "riskLevel": "String",
  "riskState": "String",
  "riskDetail": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "userId": "String",
  "initiatedBy": "String",
  "activity": {
    "@odata.type": "microsoft.graph.riskUserActivity"
  }
}
```


