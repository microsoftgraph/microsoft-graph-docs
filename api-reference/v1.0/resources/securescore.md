---
title: "secureScore resource type"
description: "Represents a tenant's secure score per day of scoring data, at the tenant and control level."
localization_priority: Normal
author: preetikr
ms.prod: ""
doc_type: resourcePageType
---

# secureScore resource type

Namespace: microsoft.graph

Represents a tenant's secure score per day of scoring data, at the tenant and control level. By default, 90 days of data is held. This data is sorted by **createdDateTime**, from latest to earliest. This will allow you to page responses by using $top=n, where n = the number of days of data that you want to retrieve. 


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List secureScores](../api/security-list-securescores.md) | [secureScores](securescore.md) collection |Get secureScore object collection.|
|[Get secureScore](../api/securescore-get.md) | [secureScore](securescore.md) |Read properties and metadata of a secureScore object. | 



## Properties

|Property |Type |Description |
|:--|:--|:--|
|id |String|Provider-generated GUID/unique identifier. Read-only. Required.|
|	azureTenantId	|	String	|	GUID string for tenant ID.	|
|	activeUserCount	|	Int32	|	Active user count of the given tenant.	|
|	createdDateTime	|	DateTimeOffset	|	The date when the entity is created.  |
|	currentScore	|	Double	|	Tenant current attained score on specified date.	|
|	enabledServices |	String collection	|	Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).	|
|	licensedUserCount	|	Int32	|	Licensed user count of the given tenant.	|
|	maxScore |	Double	|	Tenant maximum possible score on specified date.	|
|	averageComparativeScores |	[averageComparativeScore](averagecomparativescore.md) collection	|Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.	|
|	controlScores |	[controlScore](controlscore.md) collection	|	Contains tenant scores for a set of controls.	|
|vendorInformation |[securityVendorInformation](securityvendorinformation.md)|Complex type containing details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=SecureScore). Required.|


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.secureScore"
}-->

```json
{
"id": "String (identifier)",
"azureTenantId": "String",
"activeUserCount": "Int32",
"createdDateTime": "String (timestamp)",
"currentScore": "Double",
"enabledServices": ["String"],
"licensedUserCount": "Int32",
"maxScore": "Double",
"averageComparativeScores": [{"@odata.type": "microsoft.graph.averageComparativeScore"}],
"controlScores": [{"@odata.type": "microsoft.graph.controlScore"}],
"vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"},
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "secureScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

