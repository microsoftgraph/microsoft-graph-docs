---
title: "riskyUser resource type"
description: "Represents an account flagged for risk across each managed tenants."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: resourcePageType
---

# riskyUser resource type

Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an account flagged for risk across each managed tenants.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List riskyUsers](../api/managedtenants-managedtenant-list-riskyusers.md)|[microsoft.graph.managedTenants.riskyUser](../resources/managedtenants-riskyuser.md) collection|Get a list of the [riskyUser](../resources/managedtenants-riskyuser.md) objects and their properties.|
|[Get riskyUser](../api/managedtenants-riskyuser-get.md)|[microsoft.graph.managedTenants.riskyUser](../resources/managedtenants-riskyuser.md)|Read the properties and relationships of a [riskyUser](../resources/managedtenants-riskyuser.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for this entity. Required. Read-only.|
|isDeleted|Boolean|A flag indicating whether the account has been deleted. Optional. Read-only.|
|lastRefreshedDateTime|DateTimeOffset|Date and time the entity was last updated in the multi-tenant management platform. Optional. Read-only.|
|riskDetail|String|The risk details for the account flagged for risk. Optional. Read-only.|
|riskLastUpdatedDateTime|DateTimeOffset|The date and time when the risk information was last updated. Optional. Read-only.|
|riskLevel|String|The level of risk that was detected. Possible values are: `low`, `medium`, `high`, `hidden`, `none`, `unknownFutureValue`. Optional. Read-only.|
|riskState|String|The state of risk that was detected. Possible values are: `none`, `confirmedSafe`, `remediated`, `dismissed`, `atRisk`, `confirmedCompromised`, `unknownFutureValue`. Optional. Read-only.|
|tenantDisplayName|String|The display name for the managed tenant. Optional. Read-only.|
|tenantId|String|The Azure Active Directory tenant identifier for the [managed tenant](../resources/managedtenants-tenant.md). Required. Read-only.|
|userDisplayName|String|The display name for the account where risk was detected. Optional. Read-only.|
|userId|String|The identifier for the user account where risk was detected. Required. Read-only.|
|userPrincipalName|String|The user principal name (UPN) for the account where risk was detected. Optional. Read-only.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.managedTenants.riskyUser",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.managedTenants.riskyUser",
  "id": "String (identifier)",
  "userId": "String",
  "tenantId": "String",
  "tenantDisplayName": "String",
  "userDisplayName": "String",
  "userPrincipalName": "String",
  "riskState": "String",
  "riskLevel": "String",
  "riskDetail": "String",
  "isDeleted": "Boolean",
  "riskLastUpdatedDateTime": "String (timestamp)",
  "lastRefreshedDateTime": "String (timestamp)"
}
```
