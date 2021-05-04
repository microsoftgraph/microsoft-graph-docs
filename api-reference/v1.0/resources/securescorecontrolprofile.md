---
title: "secureScoreControlProfile resource type"
description: "Represents a tenant's secure score per control data. By default, it returns all controls for a tenant and can explicitly pull individual controls."
localization_priority: Normal
author: preetikr
ms.prod: ""
doc_type: resourcePageType
---

# secureScoreControlProfile resource type

Namespace: microsoft.graph

Represents a tenant's secure score per control data. By default, it returns all controls for a tenant and can explicitly pull individual controls.


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List secureScoreControlProfiles](../api/security-list-securescorecontrolprofiles.md) | [secureScoreControlProfile](securescorecontrolprofile.md) |Read properties and metadata of a secureScoreControlProfiles object.|
|[Get secureScoreControlProfile](../api/securescorecontrolprofile-get.md) | [securescorecontrolprofile](securescorecontrolprofile.md) |Read properties and metadata of a secureScoreControlProfiles object.|
|[Update securescorecontrolprofile](../api/securescorecontrolprofile-update.md) | [securescorecontrolprofile](securescorecontrolprofile.md) |Update an securescorecontrolprofile object. |


## Properties

|Name |Type |Description |
|:--|:--|:--|
|id|String|Provider-generated GUID/unique identifier. Read-only. Required.|
|azureTenantId|String|GUID string for tenant ID.|
|actionType|String|Control action type (Config, Review, Behavior).|
|actionUrl|String|URL to where the control can be actioned. |
|controlCategory|String|Control action category (Identity, Data, Device, Apps, Infrastructure).|
|title|String|Title of the control.|
|deprecated|Boolean|Flag to indicate if a control is depreciated.|
|implementationCost|String|Resource cost of implemmentating control (low, moderate, high).|
|lastModifiedDateTime|DateTimeOffset|Time at which the control profile entity was last modified. The Timestamp type represents date and time| 
|maxScore|Double|max attainable score for the control.|
|rank|Int32|Microsoft's stack ranking of control.|
|remediation|String|Description of what the control will help remediate.|
|remediationImpact|String|Description of the impact on users of the remediation.|
|service|String|Service that owns the control (Exchange, Sharepoint, Azure AD).|
|threats|String collection|List of threats the control mitigates (accountBreach,dataDeletion,dataExfiltration,dataSpillage,
elevationOfPrivilege,maliciousInsider,passwordCracking,phishingOrWhaling,spoofing).|
|tier|String|Control tier (Core, Defense in Depth, Advanced.)	|
|userImpact|String|User impact of implementing control (low, moderate, high).	|
|complianceInformation|[complianceInformation](complianceinformation.md) collection|The collection of compliance information associated with secure score control|
|controlStateUpdates|[secureScoreControlStateUpdate](securescorecontrolstateupdate.md) collection|Flag to indicate where the tenant has marked a control (ignored, thirdParty, reviewed) (supports [update](../api/securescorecontrolprofile-update.md)).|
|vendorInformation|[securityVendorInformation](securityvendorinformation.md)|Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore). Required.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.secureScoreControlProfile"
}-->

```json
{
  "id": "String (identifier)",
  "azureTenantId": "String",
  "actionType": "String",
  "actionUrl": "String",
  "controlCategory": "String",
  "title": "String", 
  "deprecated": "Boolean",
  "implementationCost": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "maxScore": "Double",
  "rank": "Int32",
  "remediation": "String",
  "remediationImpact": "String",
  "service": "String",
  "threats": ["String"],
  "tier": "String",
  "userImpact": "String",
  "complianceInformation": [{"@odata.type": "microsoft.graph.complianceInformation"}], 
  "controlStateUpdates": [{"@odata.type": "microsoft.graph.secureScoreControlStateUpdate"}],
  "vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"},
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "secureScoreControlProfiles resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

