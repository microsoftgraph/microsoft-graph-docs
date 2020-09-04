---
title: "identityRiskEvent resource type"
description: "A risk event detected by Azure Active Directory Identity Protection. It is the base type for each specific risk event type:"
author: "cloudhandler"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# identityRiskEvent resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!CAUTION]
>The **identityRiskEvents** API is deprecated and will stop returning data on January 10, 2020. For details, see [Deprecation of the IdentityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

A risk event detected by [Azure Active Directory Identity Protection](https://azure.microsoft.com/documentation/articles/active-directory-identityprotection/). It is the base type for each specific risk event type:

| Event type		 | Description|
|:---------------|:-----------|
|[anonymousipRiskEvent](anonymousipriskevent.md) | Sign-ins from anonymous IP addresses. |
|[malwareRiskEvent](malwareriskevent.md) | Sign-ins from malware-infected devices. |
|[impossibleTravelRiskEvent](impossibletravelriskevent.md) | Impossible travel to atypical locations. |
|[leakedCredentialsRiskEvent](leakedcredentialsriskevent.md) | Users with leaked credentials. |
|[suspiciousIpRiskEvent](suspiciousipriskevent.md) | Sign-ins from suspicious IP addresses. |
|[unfamiliarLocationRiskEvent](unfamiliarlocationriskevent.md) | Sign-ins from unfamiliar locations. |

Complete information about risk events can be found in the [Azure AD Identity Protection documentation](/azure/active-directory/active-directory-reporting-risk-events).

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get identityRiskEvent](../api/identityriskevent-get.md) | [identityRiskEvent](identityriskevent.md) |Read properties and relationships of identityRiskEvent object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|closedDateTime|dateTimeOffset| The date and time that the risk event was closed|
|createdDateTime|dateTimeOffset| The date and time that the risk event was created. This is always greater than or equal to the datetime of the risk event itself. This is the correct property to use as a filter when querying risk events.|
|id|string| Read-only|
|riskEventDateTime|dateTimeOffset| The date and time when the risk event occurred|
|riskEventStatus|string| Possible values are: `active`, `remediated`, `dismissedAsFixed`, `dismissedAsFalsePositive`, `dismissedAsIgnore`, `loginBlocked`, `closedMfaAuto`, `closedMultipleReasons`.|
|riskLevel|string| Possible values are: `low`, `medium`, `high`.|
|riskEventType|string| The type of risk|
|userDisplayName|string| The name of the user at risk|
|userId|string| The id of the user at risk|
|userPrincipalName|string| The user principal name of the user at risk|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|impactedUser|[user](user.md)| Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.identityRiskEvent"
}-->

```json
{
  "closedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "riskEventDateTime": "String (timestamp)",
  "riskEventStatus": "string",
  "riskLevel": "string",
  "riskType": "string",
  "userDisplayName": "string",
  "userId": "string",
  "userPrincipalName": "string",
  "riskEventType": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "identityRiskEvent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
