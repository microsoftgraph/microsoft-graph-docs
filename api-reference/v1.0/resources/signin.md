---
title: "signIn resource type"
description: "Details user and application sign-in activity for a tenant (directory)."
author: "khotz"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# signIn resource type

Namespace: microsoft.graph

Details user and application sign-in activity for a tenant (directory).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String|App name displayed in the Azure Portal.|
|appId|String|Unique GUID representing the app ID in the Azure Active Directory.|
|appliedConditionalAccessPolicy|[appliedConditionalAccessPolicy](appliedconditionalaccesspolicy.md) collection|Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.|
|clientAppUsed|String|Identifies the legacy client used for sign-in activity.  Includes Browser, Exchange Active Sync, modern clients, IMAP, MAPI, SMTP, and POP.|
|conditionalAccessStatus|string| Reports status of an activated conditional access policy. Possible values are: `success`, `failure`, `notApplied`, and `unknownFutureValue`.|
|correlationId|String|The request ID sent from the client when the sign-in is initiated; used to troubleshoot sign-in activity.|
|createdDateTime|DateTimeOffset|Date and time (UTC) the sign-in was initiated. Example: midnight on Jan 1, 2014 is reported as `'2014-01-01T00:00:00Z'`.|
|deviceDetail|[deviceDetail](devicedetail.md)|Device information from where the sign-in occurred; includes device ID, operating system, and browser. |
|id|String|Unique ID representing the sign-in activity.|
|ipAddress|String|IP address of the client used to sign in.|
|isInteractive|Boolean|Indicates if a sign-in is interactive or not.|
|location|[signInLocation](signinlocation.md)|Provides the city, state, and country code where the sign-in originated.|
|resourceDisplayName|String|Name of the resource the user signed into.|
|resourceId|String|ID of the resource that the user signed into.|
|riskDetail|riskDetail|Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `unknownFutureValue`. The value `none` means that no action has been performed on the user or sign-in so far. <br>**Note:** Details for this property require an Azure AD Premium P2 license. Other licenses return the value `hidden`.|
|riskEventTypes|riskEventType collection|Risk event types associated with the sign-in. The possible values are: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, and `unknownFutureValue`.|
|riskEventTypes_v2|String collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`.|
|riskLevelAggregated|riskLevel|Aggregated risk level. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskLevelDuringSignIn|riskLevel|Risk level during sign-in. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskState|riskState|Reports status of the risky user, sign-in, or a risk event. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|status|[signInStatus](signinstatus.md)|Sign-in status. Possible values include `Success` and `Failure`.|
|userDisplayName|String|Display name of the user that initiated the sign-in.|
|userId|String|ID of the user that initiated the sign-in.|
|userPrincipalName|String|User principal name of the user that initiated the sign-in.|

## Relationships

None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.signIn"
}-->
```json
{
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "appDisplayName": "String",
  "appId": "String",
  "ipAddress": "String",
  "clientAppUsed": "String",
  "correlationId": "String",
  "conditionalAccessStatus": "string",
  "appliedConditionalAccessPolicy": [{"@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"}],
  "isInteractive": "String",
  "deviceDetail": {"@odata.type": "microsoft.graph.deviceDetail"},
  "location": {"@odata.type": "microsoft.graph.signInLocation"},
  "riskDetail": "string",
  "riskLevelAggregated": "string",
  "riskLevelDuringSignIn": "string",
  "riskState": "string",
  "riskEventTypes": ["string"],
  "riskEventTypes_v2": ["String"],
  "resourceDisplayName": "string",
  "resourceId": "string",
  "status": {"@odata.type": "microsoft.graph.signInStatus"},
  "userDisplayName": "string",
  "userId": "string",
  "userPrincipalName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "signIn resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

