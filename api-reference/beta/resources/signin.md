---
title: "signIn resource type"
doc_type: resourcePageType
description: "Provides details about user or application sign-in activity in your directory."
author: "besiler"
localization_priority: Normal
ms.prod: "identity-and-access-reports"
---


# signIn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides details about user or application sign-in activity in your directory. You must have an Azure AD Premium P1 or P2 license to download sign-in logs using the Microsoft Graph API.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List signIn](../api/signin-list.md) | [signIn](signin.md) |Read properties and relationships of signIn objects.|
|[Get signIn](../api/signin-get.md) | [signIn](signin.md) |Read properties and relationships of a signIn object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|alternateSignInName|String|The alternate sign-in identity whenever you use phone number to sign-in. Supports `$filter` (`eq` and `startsWith` operators only).|
|appDisplayName|String|The application name displayed in the Azure Portal. Supports `$filter` (`eq` and `startsWith` operators only).|
|appId|String|The application identifier in Azure Active Directory. Supports `$filter` (`eq` operator only).|
|appliedConditionalAccessPolicies|[appliedConditionalAccessPolicy](appliedconditionalaccesspolicy.md) collection|A list of conditional access policies that are triggered by the corresponding sign-in activity.|
|authenticationDetails|[authenticationDetail](authenticationdetail.md) collection|The result of the authentication attempt and additional details on the authentication method.|
|authenticationMethodsUsed|String collection|The authentication methods used. Possible values: `SMS`, `Authenticator App`, `App Verification code`, `Password`, `FIDO`, `PTA`, or `PHS`.|
|authenticationProcessingDetails|[keyValue](keyvalue.md) collection|Additional authentication processing details, such as the agent name in case of PTA/PHS or Server/farm name in case of federated authentication.|
|authenticationRequirement | String | This holds the highest level of authentication needed through all the sign-in steps, for sign-in to succeed. Supports `$filter` (`eq` and `startsWith` operators only).|
|authenticationRequirementPolicies|[authenticationRequirementPolicy](../resources/authenticationrequirementpolicy.md) collection|Sources of authentication requirement, such as conditional access, per-user MFA, identity protection, and security defaults.|
|autonomousSystemNumber|Int32|The Autonomous System Number (ASN) of the network used by the actor.|
|clientAppUsed|String|The legacy client used for sign-in activity. For example: `Browser`, `Exchange Active Sync`, `Modern clients`, `IMAP`, `MAPI`, `SMTP`, or `POP`. Supports `$filter` (`eq` operator only). |
|conditionalAccessStatus|conditionalAccessStatus| The status of the conditional access policy triggered. Possible values: `success`, `failure`, `notApplied`, or `unknownFutureValue`. Supports `$filter` (`eq` operator only).|
|correlationId|String|The identifier that's sent from the client when sign-in is initiated. This is used for troubleshooting the corresponding sign-in activity when calling for support. Supports `$filter` (`eq` operator only).|
|createdDateTime|DateTimeOffset|The date and time the sign-in was initiated. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$orderby` and `$filter` (`eq`, `le`, and `ge` operators only).|
|crossTenantAccessType|signInAccessType|Describes the type of cross tenant access used by the actor to access the resource. Possible values are: `none`, `b2bCollaboration`, `b2bDirectConnect`, `microsoftSupport`, `serviceProvider`, `unknownFutureValue`. If the sign in did not cross tenant boundaries, the value is `none`.|
|deviceDetail|[deviceDetail](devicedetail.md)|The device information from where the sign-in occurred. Includes information such as deviceId, OS, and browser. Supports `$filter` (`eq` and `startsWith` operators only) on **browser** and **operatingSytem** properties.|
|flaggedForReview|Boolean|During a failed sign in, a user may click a button in the Azure portal to mark the failed event for tenant admins. If a user clicked the button to flag the failed sign in, this value is `true`.|
|homeTenantId|String|The tenant identifier of the user initiating the sign in. Not applicable in Managed Identity or Service Principal sign ins.|
|id|String|The identifier representing the sign-in activity. Supports `$filter` (`eq` operator only).|
|ipAddress|String|The IP address of the client from where the sign-in occurred. Supports `$filter` (`eq` and `startsWith` operators only).|
|isInteractive|Boolean|Indicates whether a user sign in is interactive. In interactive sign in, the user provides an authentication factor to Azure AD. These factors include passwords, responses to MFA challenges, biometric factors, or QR codes that a user provides to Azure AD or an associated app. In non-interactive sign in, the user doesn't provide an authentication factor. Instead, the client app uses a token or code to authenticate or access a resource on behalf of a user. Non-interactive sign ins are commonly used for a client to sign in on a user's behalf in a process transparent to the user.|
|isTenantRestricted|Boolean|Shows whether the sign in event was subject to an Azure AD tenant restriction policy.|
|location|[signInLocation](signinlocation.md)|The city, state, and 2 letter country code from where the sign-in occurred. Supports `$filter` (`eq` and `startsWith` operators only) on **city**, **state**, and **countryOrRegion** properties.|
|networkLocationDetails|[networkLocationDetail](networklocationdetail.md) collection|The network location details including the type of network used and its names.|
|originalRequestId|String|The request identifier of the first request in the authentication sequence. Supports `$filter` (`eq` operator only).|
|privateLinkDetails|[privateLinkDetails](../resources/privatelinkdetails.md)|Contains information about the Azure AD Private Link policy that is associated with the sign in event.|
|processingTimeInMilliseconds|Int|The request processing time in milliseconds in AD STS.|
|resourceDisplayName|String|The name of the resource that the user signed in to. Supports `$filter` (`eq` operator only).|
|resourceId|String|The identifier of the resource that the user signed in to. Supports `$filter` (`eq` operator only).|
|resourceTenantId|String|The tenant identifier of the resource referenced in the sign in.|
|riskDetail|riskDetail|The reason behind a specific state of a risky user, sign-in, or a risk event. Possible values: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, or `unknownFutureValue`. The value `none` means that no action has been performed on the user or sign-in so far. Supports `$filter` (`eq` operator only).<br> **Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers are returned `hidden`.|
|riskEventTypes|riskEventType collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`. Supports `$filter` (`eq` operator only).|
|riskEventTypes_v2|String collection|The list of risk event types associated with the sign-in. Possible values: `unlikelyTravel`, `anonymizedIPAddress`, `maliciousIPAddress`, `unfamiliarFeatures`, `malwareInfectedIPAddress`, `suspiciousIPAddress`, `leakedCredentials`, `investigationsThreatIntelligence`,  `generic`, or `unknownFutureValue`. Supports `$filter` (`eq` and `startsWith` operators only).|
|riskLevelAggregated|riskLevel|The aggregated risk level. Possible values: `none`, `low`, `medium`, `high`, `hidden`, or `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. Supports `$filter` (`eq` operator only). <br>**Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers are returned `hidden`.|
|riskLevelDuringSignIn|riskLevel|The risk level during sign-in. Possible values: `none`, `low`, `medium`, `high`, `hidden`, or `unknownFutureValue`. The value `hidden` means the user or sign-in was not enabled for Azure AD Identity Protection. Supports `$filter` (`eq` operator only). <br>**Note:** Details for this property are only available for Azure AD Premium P2 customers. All other customers are returned `hidden`.|
|riskState|riskState|The risk state of a risky user, sign-in, or a risk event. Possible values: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, or `unknownFutureValue`. Supports `$filter` (`eq` operator only).|
|servicePrincipalCredentialKeyId|String|The unique identifier of the key credential used by the service principal to authenticate.|
|servicePrincipalCredentialThumbprint|String|The certificate thumbprint of the certificate used by the service principal to authenticate.|
|servicePrincipalId|String|The application identifier used for sign-in. This field is populated when you are signing in using an application. Supports `$filter` (`eq` and `startsWith` operators only).|
|servicePrincipalName|String|The application name used for sign-in. This field is populated when you are signing in using an application. Supports `$filter` (`eq` and `startsWith` operators only).|
|signInEventTypes|String collection|Indicates the category of sign in that the event represents. For user sign ins, the category can be `interactiveUser` or `nonInteractiveUser` and corresponds to the value for the **isInteractive** property on the signin resource. For managed identity sign ins, the category is `managedIdentity`. For service principal sign ins, the category is **servicePrincipal**. Possible values are: `interactiveUser`, `nonInteractiveUser`, `servicePrincipal`, `managedIdentity`, `unknownFutureValue`.|
|signInIdentifier|String|The identification that the user provided to sign in. It may be the userPrincipalName but it's also populated when a user signs in using other identifiers.|
|signInIdentifierType|signInIdentifierType|The type of sign in identifier. Possible values are: `userPrincipalName`, `phoneNumber`, `proxyAddress`, `qrCode`, `onPremisesUserPrincipalName`, `unknownFutureValue`.|
|status|[signInStatus](signinstatus.md)|The sign-in status. Includes the error code and description of the error (in case of a sign-in failure). Supports `$filter` (`eq` operator only) on **errorCode** property.|
|tokenIssuerName|String|The name of the identity provider. For example, `sts.microsoft.com`. Supports `$filter` (`eq` operator only).|
|tokenIssuerType|tokenIssuerType|The type of identity provider. Possible values: `AzureAD`, `ADFederationServices`, or `UnknownFutureValue`.|
|userAgent|String|The user agent information related to sign-in. Supports `$filter` (`eq` and `startsWith` operators only).|
|userDisplayName|String|The display name of the user. Supports `$filter` (`eq` and `startsWith` operators only).|
|userId|String|The identifier of the user. Supports `$filter` (`eq` operator only).|
|userPrincipalName|String|The UPN of the user. Supports `$filter` (`eq` and `startsWith` operators only).|
|userType|signInUserType|Identifies whether the user is a member or guest in the tenant. Possible values are: `member`, `guest`, `unknownFutureValue`.|


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
  "alternateSignInName": "String",
  "appDisplayName": "String",
  "appId": "String",
  "appliedConditionalAccessPolicies": [{"@odata.type": "microsoft.graph.appliedConditionalAccessPolicy"}],
  "authenticationDetails": [{"@odata.type": "microsoft.graph.authenticationDetail"}],
  "authenticationMethodsUsed": ["String"],
  "authenticationProcessingDetails": [{"@odata.type": "microsoft.graph.keyValue"}],
  "clientAppUsed": "String",
  "conditionalAccessStatus": "string",
  "correlationId": "String",
  "createdDateTime": "String (timestamp)",
  "deviceDetail": {"@odata.type": "microsoft.graph.deviceDetail"},
  "id": "String (identifier)",
  "ipAddress": "String",
  "isInteractive": true,
  "location": {"@odata.type": "microsoft.graph.signInLocation"},
  "mfaDetail": {"@odata.type": "microsoft.graph.mfaDetail"},
  "networkLocationDetails": [{"@odata.type": "microsoft.graph.networkLocationDetail"}],
  "originalRequestId": "String",
  "processingTimeInMilliseconds": 1024,
  "resourceDisplayName": "String",
  "resourceId": "String",
  "riskDetail": "string",
  "riskEventTypes": ["string"],
  "riskEventTypes_v2": ["String"],
  "riskLevelAggregated": "string",
  "riskLevelDuringSignIn": "string",
  "riskState": "string",
  "servicePrincipalId": "String",
  "servicePrincipalName": "String",
  "status": {"@odata.type": "microsoft.graph.signInStatus"},
  "tokenIssuerName": "String",
  "tokenIssuerType": "string",
  "userAgent": "String",
  "userDisplayName": "String",
  "userId": "String",
  "userPrincipalName": "String"
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
