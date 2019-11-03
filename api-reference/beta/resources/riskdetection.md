---
title: "riskDetection resource type"
description: "Represents all risk detections in AzureAD tenants."
author: "davidmu1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---
# riskDetection resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about a detected risk in an Azure AD tenant. 

Azure AD continually evaluates [user risks](riskyuser.md) and app or user [sign-in](signin.md) risks based on various signals and machine learning. This API provides programmatic access to all risk detections in your Azure AD environment.

For more information about risk events, see [Azure Active Directory Identity Protection](https://azure.microsoft.com/documentation/articles/active-directory-identityprotection/).

>[!NOTE]
>You must have an Azure AD Premium P1 or P2 license to use the risk detection API.

## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List riskDetection](../api/riskdetection-list.md) | [riskDetection](riskdetection.md) collection|List risk detections and their properties.|
|[Get riskDetection](../api/riskdetection-get.md) | [riskDetection](riskdetection.md)|Get a specific risky detection and its properties.|

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|`id`|`string`|Unique ID of the risk detection. |
|`requestId`|`string`|Request ID of the sign-in associated with the risk detection. This property is null if the risk detection is not associated with a sign-in.|
|`correlationId`|`string`|Correlation ID of the sign-in associated with the risk detection. This property is null if the risk detection is not associated with a sign-in. |
|`riskType`|`riskEventType`|The type of risk event detected. The possible values are unlikelyTravel, anonymizedIPAddress, maliciousIPAddress, unfamiliarFeatures, malwareInfectedIPAddress, suspiciousIPAddress, leakedCredentials, investigationsThreatIntelligence, genericadminConfirmedUserCompromised, mcasImpossibleTravel, mcasSuspiciousInboxManipulationRules, investigationsThreatIntelligenceSigninLinked, maliciousIPAddressValidCredentialsBlockedIP, and unknownFutureValue. |
|`riskState`|`riskState`|The state of a detected risky user or sign-in. The possible values are none, confirmedSafe, remediated, dismissed, atRisk, confirmedCompromised, and unknownFutureValue. |
|`riskLevel`|`riskLevel`|Level of the detected risk. The possible values are low, medium, high, hidden, none, unknownFutureValue. **Note:** Details for this property are only available for Azure AD Premium P2 customers. P1 customers will be returned `hidden`.|
|`riskDetail`|`riskDetail`|Details of the detected risk. The possible values are none, adminGeneratedTemporaryPassword, userPerformedSecuredPasswordChange, userPerformedSecuredPasswordReset, adminConfirmedSigninSafe, aiConfirmedSigninSafe, userPassedMFADrivenByRiskBasedPolicy, adminDismissedAllRiskForUser, adminConfirmedSigninCompromised, hidden, adminConfirmedUserCompromised, unknownFutureValue. **Note:** Details for this property are only available for Azure AD Premium P2 customers. P1 customers will be returned `hidden`.|
|`source`|`string`|Source of the risk detection. For example, "activeDirectory". |
|`detectionTimingType`|`riskDetectionTimingType`|Timing of the detected risk (real-time/offline). The possible values are notDefined, realtime, nearRealtime, offline, unknownFutureValue. |
|`activity`|`activityType`|Indicates the activity type the detected risk is linked to. The possible values are signin, user, unknownFutureValue. |
|`tokenIssuerType`|`tokenIssuerType`|Indicates the type of token issuer for the detected sign-in risk. The possible values are AzureAD, ADFederationServices, and unknownFutureValue. |
|`ipAddress`|`string`|Provides the IP address of the client from where the risk occurred. |
|`location`|[`signInLocation`](signinlocation.md)|Location of the sign-in. |
|`activityDateTime`|`datetimeoffset`|Date and time that the risky activity occurred. |
|`detectedDateTime`|`datetimeoffset`|Date and time that the risk was detected. |
|`lastUpdatedDateTime`|`datetime`|Date and time that the risk detection was last updated. |
|`userId`|`string`|Unique ID of the user. |
|`userDisplayName`|`string`|Name of the user. |
|`userPrincipalName`|`string`|The user principal name (UPN) of the user. |
|`additionalInfo`|`string`|Additional information associated with the risk detection in JSON format. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.riskDetection"
}-->

```json
{
 "id": "string",
    "requestId": "string",
    "correlationId": "string",
    "riskType": {"@odata.type": "microsoft.graph.riskEventType"},
    "riskState": {"@odata.type": "microsoft.graph.riskState"},
    "riskLevel": {"@odata.type": "microsoft.graph.riskLevel"},
    "riskDetail": {"@odata.type": "microsoft.graph.riskDetail"},
    "source": "string",
    "detectionTimingType": {"@odata.type": "microsoft.graph.riskDetectionTimingType"},
    "activity": {"@odata.type": "microsoft.graph.riskUserActivity"},
    "tokenIssuerType": {"@odata.type": "microsoft.graph.tokenIssuerType"},
    "ipAddress": "string",
    "location": {"@odata.type": "microsoft.graph.signInLocation"},
    "activityDateTime": "string (timestamp)",
    "detectedDateTime": "string (timestamp)",
    "lastUpdatedDateTime": "string (timestamp)",
    "userId": "string",
    "userDisplayName": "string",
    "userPrincipalName": "string",
    "additionalInfo": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "riskDetections resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
