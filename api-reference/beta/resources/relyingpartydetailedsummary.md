---
title: "relyingPartyDetailedSummary resource type"
description: "Represents a relying party in AD FS."
localization_priority: Normal
author: "khotz"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# relyingPartyDetailedSummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a relying party configured with Active Directory Federation Services (AD FS), its aggregated usage, and whether the relying party configuration can be migrated to Azure Active Directory.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/relyingpartydetailedsummary-list.md) | [relyingPartyDetailedSummary](relyingpartydetailedsummary.md) | Retrieve a list of **relyingPartyDetailedSummary** objects. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only. Unique Identifier generated at API level.| 
|relyingPartyId|String|This identifier is used to identify the relying party to this Federation Service. It is used when issuing claims to the relying party.|
|serviceId|String|Uniquely identifies the Active Directory forest.|
|migrationStatus|string| Indication of whether the application can be moved to Azure AD or require more investigation. Possible values are: `ready`, `needsReview`, `additionalStepsRequired`.|
|migrationValidationDetails|[keyValuePair](keyvaluepair.md) collection|Specifies all the validations check done on applications configuration details to evaluate if the application is ready to be moved to Azure AD. Possible names are: `AdditionalWSFedEndpointCheckResult`,  `AllowedAuthenticationClassReferencesCheckResult`, `AlwaysRequireAuthenticationCheckResult`,   `AutoUpdateEnabledCheckResult`, `ClaimsProviderNameCheckResult`, `EncryptClaimsCheckResult`,  `EncryptedNameIdRequiredCheckResult`, `MonitoringEnabledCheckResult`,`NotBeforeSkewCheckResult`,  `RequestMFAFromClaimsProvidersCheckResult`, `SignedSamlRequestsRequiredCheckResult`, `AdditionalAuthenticationRulesCheckResult`, `TokenLifetimeCheckResult`,  `DelegationAuthorizationRulesCheckResult`, `IssuanceAuthorizationRulesCheckResult`, `IssuanceTransformRulesCheckResult`. Possible result values are `0`, `1`, or `2`. `0` when the validation check passed, `1` when the validation check failed and `2` when the validation check is a warning. |
|relyingPartyName|String|Name of application or other entity on the internet that uses an identity provider to authenticate a user who wants to log in.|
|failedSignInCount|Int64| Number of failed sign in on Active Directory Federation Service in the period specified. |
|replyUrls|String collection|Specifies where the relying party expects to receive the token.|
|signInSuccessRate|Double|Number of successful / (number of successful + number of failed sign ins) on Active Directory Federation Service in the period specified.|
|successfulSignInCount|Int64|Number of successful sign ins on Active Directory Federation Service.|
|totalSignInCount|Int64|Number of successful + failed sign ins failed sign ins on Active Directory Federation Service in the period specified.|
|uniqueUserCount|Int64|Number of unique users that have signed into the application.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.relyingPartyDetailedSummary",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "failedSignInCount": 10,
  "id": "String (identifier)",
  "migrationStatus": "ready | needsReview | additionalStepsRequired",
  "migrationValidationDetails": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "relyingPartyId": "String",
  "relyingPartyName": "String",
  "replyUrls": ["String"],
  "serviceId": "String (identifier)",
  "signInSuccessRate": 90.0,
  "successfulSignInCount": 90,
  "totalSignInCount": 100,
  "uniqueUserCount": 10
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "relyingPartyDetailedSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


