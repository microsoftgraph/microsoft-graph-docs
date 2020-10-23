---
title: "userSecurityState resource type"
description: "Contains stateful information about the user account."
localization_priority: Normal
author: "krbain"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# userSecurityState resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains stateful information about the user account.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|aadUserId|String|AAD User object identifier (GUID) - represents the physical/multi-account user entity.|
|accountName|String|Account name of user account (without Active Directory domain or DNS domain) - (also called `mailNickName`).|
|domainName|String|NetBIOS/Active Directory domain of user account (that is, domain\account format).|
|emailRole|emailRole|For email-related alerts - user account's email 'role'. Possible values are: `unknown`, `sender`, `recipient`.|
|isVpn|Boolean|Indicates whether the user logged on through a VPN.|
|logonDateTime|DateTimeOffset|Time at which the sign-in occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|logonId|String|User sign-in ID.|
|logonIp|String|IP Address the sign-in request originated from.|
|logonLocation|String|Location (by IP address mapping) associated with a user sign-in event by this user.|
|logonType|logonType|Method of user sign in. Possible values are: `unknown`, `interactive`, `remoteInteractive`, `network`, `batch`, `service`.|
|onPremisesSecurityIdentifier|String|Active Directory (on-premises) Security Identifier (SID) of the user.|
|riskScore|String|Provider-generated/calculated risk score of the user account. Recommended value range of 0-1, which equates to a percentage.|
|userAccountType|userAccountSecurityType|User account type (group membership), per Windows definition. Possible values are: `unknown`, `standard`, `power`, `administrator`.|
|userPrincipalName|String|User sign-in name - internet format: (user account name)@(user account DNS domain name).|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userSecurityState"
}-->

```json
{
  "aadUserId": "String",
  "accountName": "String",
  "domainName": "String",
  "emailRole": "@odata.type: microsoft.graph.emailRole",
  "isVpn": true,
  "logonDateTime": "String (timestamp)",
  "logonId": "String",
  "logonIp": "String",
  "logonLocation": "String",
  "logonType": "@odata.type: microsoft.graph.logonType",
  "onPremisesSecurityIdentifier": "String",
  "riskScore": "String",
  "userAccountType": "@odata.type: microsoft.graph.userAccountSecurityType",
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "userSecurityState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


