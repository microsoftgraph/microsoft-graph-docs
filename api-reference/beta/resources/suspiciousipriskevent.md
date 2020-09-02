---
title: "suspiciousIpRiskEvent resource type"
description: "A risk event detected by Azure Active Directory Identity Protection where an account sign-in is attempted from a suspicious IP address. Complete information about risk events can be found in the Azure AD Identity Protection documentation."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "cloudhandler"
---

# suspiciousIpRiskEvent resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

>[!CAUTION]
>The **identityRiskEvents** API is deprecated and will stop returning data on January 10, 2020. For details, see [Deprecation of the IdentityRiskEvents API](https://developer.microsoft.com/office/blogs/deprecatation-of-the-identityriskevents-api/).

A risk event detected by [Azure Active Directory Identity Protection](https://azure.microsoft.com/documentation/articles/active-directory-identityprotection/) where an account sign-in is attempted from a suspicious IP address. Complete information about risk events can be found in the [Azure AD Identity Protection documentation](https://azure.microsoft.com/documentation/articles/active-directory-identityprotection-risk-events-types/).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get suspiciousIpRiskEvent](../api/suspiciousipriskevent-get.md) | [suspiciousIpRiskEvent](suspiciousipriskevent.md) |Read properties and relationships of suspiciousIpRiskEvent object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|closedDateTime|dateTimeOffset| The date and time that the risk event was closed|
|createdDateTime|dateTimeOffset| The date and time that the risk event was created. This is always greater than or equal to the datetime of the risk event itself. This is the correct property to use as a filter when querying risk events.|
|id|string| Read-only|
|ipAddress|string| The IP address of the sign-in|
|location|string| The location attached to the IP address of the sign-in|
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
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.suspiciousIpRiskEvent"
}-->

```json
{
  "closedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "ipAddress": "string",
  "location": "string",
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
  "description": "suspiciousIpRiskEvent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
