# secureScores resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents a tenants Secure Score per day scoring data, at the tenant and control level. By default 90 days of data is held, this can be filtered by $top(n). To learn more, see the sample queries in [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer).


## Methods

| Method   | Return Type|Description|
|:---------------|:--------|:----------|
|[Get secureScores](../api/get_secureScores.md) | [secureScores](secureScores.md) |Read properties and metadata of a secureScores object.|


## Properties - secureScore
Entity type containing properties of the tenent security score (daily snapshot data).

|Property |Type |Description |
|:--|:--|:--|
|	azureTenantId	|	String	|	GUID string for tenant ID	|
|	createdDateTime	|	DateTimeOffset	|	The date  when the entity is created
|	id	|	String	|	Combination of azureTenantId_createdDateTime	|
|	licensedUserCount	|	Int32	|	Licensed user count of the provided tenant	|
|	activeUserCount	|	Int32	|	Active user count of the given tenant	|
|	currentScore	|	Double	|	Tenant current attained score on specified date	|
|	maxScore |	Double	|	Tenant maximum possible score on specified date	|
|	enabledServices |	collection(String)	|	Microsoft provided services for the tenant (Ex: Excahnge online, Skype, Sharepoint etc)	|
|	averageComparativeScores |	collection(averageComparativeScore)	|Average score by different scopes(ex: average by industry, average by seating etc) and control category (Accout, app, device) with in the scope	|
|	controlScores |	string	|	Contains tenant score for individual control and control discription	|

## Properties - averageScoreByScope
Complex type containing properties for average score by different scopes(ex: average by industry, average by seating etc) and control category (Accout, app, device) with in the scope. Also contains other extended properties

|Property |Type |Description |
|:--|:--|:--|
|	scope	|	String	|	Scope type (By all tenants, By Industry, By # of seats)	|
|	averageScore	|	Double	| Average score with in specified scope |

## Properties - controlScore
Complex type contains tenant score for individual control and control discription

|Name |Type |Description |
|:--|:--|:--|
|	controlName	|	String	|	Control unique name	|
|	score	|	Double	|  Tenant achieved score for the control (its varies day by day depends on tenant action on the control) |
|	controlCategory	|	String	|  Control action category(Identity, Data, Device, Apps, Infrastructure) |
|	description	|	String	|  Description of the control |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.secureScores"
}-->

```json
{
"id": "String",
"tenantId": "Guid",
"createdDate": "DateTimeOffset",
"licensedUserCount": "Int32",
"activeUserCount": "Int32",
"currentScore": "Int32",
"maxScore": "Int32",
"averageScore": "Double",
"enabledServices": "Collection(string)",
"secureScoresByCategory": "Collection(Microsoft.Office.SecureScore.secureScoresByCategory)",
"controls": "Collection(Microsoft.Office.SecureScore.controls)",
}

```


<!-- {
  "type": "#page.annotation",
  "description": "secureScores resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
