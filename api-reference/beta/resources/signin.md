---
title: "signIn resource type"
description: "This resource details user or application sign-in activity in your directory. "
localization_priority: Priority
---

# signIn resource type
This resource details user or application sign-in activity in your directory. 

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of signIn object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appDisplayName|String|Refers to the application name displayed in the Azure Portal.|
|appId|String|Refers to the Unique GUID representing Application Id in the Azure Active Directory.|
|clientAppUsed|String|Provides the legacy client used for sign-in activty.E.g. includes Browser, Exchange Active Sync,Modern clients, IMAP, MAPI, SMTP, POP.|
|appliedConditionalAccessPolicy|[conditionalAccessPolicy](conditionalaccesspolicy.md) collection|Provides a list of conditional access policies that are triggered by the corresponding sign-in activity.|
|conditionalAccessStatus|string| Provides the status of the conditional access policy triggered. Possible values are: `success`, `failure`, `notApplied`, `unknownFutureValue`.|
|originalRequestId|String|The request id of the first request in the authentication sequence.|
|isInteractive|Boolean|Indicates if a signIn is interactive or not.|
|tokenIssuerName|String|Name of the identity Provider (e.g. sts.microsoft.com)|
|tokenIssuerType|String|Provides the type of identityProvider. Possible values are `AzureAD`, `ADFederationServices`, `UnknownFutureValue`.|
|correlationId|String|Refers to the ID that's sent from the client when the sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling helpdesk or support.|
|createdDateTime|DateTimeOffset|Provides the date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|deviceDetail|[deviceDetail](devicedetail.md)|Provides the device information from where the sign-in occurred. It inclules information like deviceId, OS, browser. |
|id|String|Indicates unique ID representing the sign-in activity.|
|ipAddress|String|Provides the IP address of the client from where the sign-in occurred.|
|location|[signInLocation](signinlocation.md)|Provides the city, state and 2 letter country code from where the sign-in occurred.|
|processingTimeInMilliseconds|Int|Provides the request processing time in milliseconds in AD STS|
|riskDetail|`riskDetail`|Provides the 'reason' behind a specific state of a risky user, sign-in or a risk event. The possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `unknownFutureValue`. The value `none` means that no action has been performed on the user or sign-in so far. **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskLevelAggregated|`riskLevel`|Provides the aggregated risk level. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskLevelDuringSignIn|`riskLevel`|Provides the risk level during sign-in. The possible values are: `none`, `low`, `medium`, `high`, `hidden`, and `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers will be returned `hidden`.|
|riskEventTypes|`riskEventTypes`|Provides the list of risk event types associated with the sign-in. The possible values are: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, and `unknownFutureValue`.|
|riskState|`riskState`|Provides the 'risk state' of a risky user, sign-in or a risk event. The possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`.|
|mfaDetail|[mfaDetail](mfadetail.md)|Provides the MFA related information like MFA Required, MFA Status for the corresponding sign-in.|
|networkLocationDetail|[networkLocationDetail](networklocationdetail.md)|Provides details about the network location.|
|riskLevel|string| Provides the risk level associated with the sign-in.Possible values are: `low`, `medium`, `high`.|
|status|[signInStatus](signinstatus.md)|Provides the sign-in status. Possible values include `Success` and `Failure`.|
|userDisplayName|String|Indicates the display Name of the User.|
|userId|String|Indicates the userId of the user.|
|userPrincipalName|String|Indicates the UPN of the user.|
|resourceDisplayName|String|Indicates the name of the resource that the user signed into|
|resourceId|String|Indicates the Id of the resource that the user signed into.|
|authenticationMethodsUsed|String|Indicates the list of Authentication methods used|

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
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "userId": "String",
  "appDisplayName": "String",
  "appId": "String",
  "ipAddress": "String",
  "clientAppUsed": "String",
  "mfaDetail": {"@odata.type": "microsoft.graph.mfaDetail"},
  "correlationId": "String",
  "conditionalAccessStatus": "string",
  "appliedConditionalAccessPolicy": [{"@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"}],
  "originalRequestId": "String",
  "isInteractive": "String",
  "tokenIssuerName": "String",
  "tokenIssuerType": "String",
  "deviceDetail": {"@odata.type": "microsoft.graph.deviceDetail"},
  "location": {"@odata.type": "microsoft.graph.signInLocation"},
  "riskDetail": "string",
  "riskLevelAggregated": "string",
  "riskLevelDuringSignIn": "string",
  "riskState": "string",
  "riskEventTypes": "string",
  "resourceDisplayName": "string",
  "resourceId": "string",
  "authenticationMethodsUsed": "string",
  "status": {"@odata.type": "microsoft.graph.signInStatus"},
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
