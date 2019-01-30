---
title: "secureScores resource type"
description: "top=n, where n = the number of days of data that you want to retrieve. "
localization_priority: Normal
---

# secureScores resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a tenant's secure score per day of scoring data, at the tenant and control level. By default, 90 days of data is held. This data is sorted by **createdDateTime**, from latest to earliest. This will allow you to page responses by using $top=n, where n = the number of days of data that you want to retrieve. 


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[List secureScores](../api/securescores-list.md) | [secureScores](securescores.md) |Read properties and metadata of a secureScores object.|


## Properties
Entity type containing properties of the tenant security score (daily snapshot data).

|Property |Type |Description |
|:--|:--|:--|
|	azureTenantId	|	String	|	GUID string for tenant ID.	|
|	createdDateTime	|	DateTimeOffset	|	The date when the entity is created.  |
|	id	|	String	|	Combination of azureTenantId_createdDateTime.	|
|	licensedUserCount	|	Int32	|	Licensed user count of the given tenant.	|
|	activeUserCount	|	Int32	|	Active user count of the given tenant.	|
|	currentScore	|	Double	|	Tenant current attained score on specified date.	|
|	maxScore |	Double	|	Tenant maximum possible score on specified date.	|
|	enabledServices |	String collection	|	Microsoft-provided services for the tenant (for example, Exchange online, Skype, Sharepoint).	|
|	averageComparativeScores |	[averageComparativeScore](averagecomparativescore.md) collection	|Average score by different scopes (for example, average by industry, average by seating) and control category (Identity, Data, Device, Apps, Infrastructure) within the scope.	|
|	controlScores |	[controlScore](controlscore.md) collection	|	Contains tenant scores for a set of controls.	|
|	vendorInformation |	[securityVendorInformation](securityvendorinformation.md) | Contains details about the security product/service vendor, provider, and subprovider (for example, vendor=Microsoft; provider=Windows Defender ATP; subProvider=AppLocker).|

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
    "id": "String",
    "azureTenantId": "String (identifier)",
    "createdDateTime": "DateTimeOffset",
    "licensedUserCount": "Int32",
    "activeUserCount": "Int32",
    "currentScore": "Double",
    "maxScore": "Double",    
    "enabledServices": ["String"],
    "averageComparativeScores": [{ "@odata.type":"microsoft.graph.averageComparativeScores"}],
    "controlScores": [{"@odata.type":"microsoft.graph.controlScores"}],
    "vendorInformation" : "microsoft.graph.securityVendorInformation"
}
```


<!--
{
  "type": "#page.annotation",
  "description": "secureScores resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/securescores.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
