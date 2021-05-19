---
title: "sourceCollection resource type"
description: "Represents an eDiscovery collection, commonly known as a search."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# sourceCollection resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an eDiscovery collection, commonly known as a search. For details, see [Collect data for a case in Advanced eDiscovery](/microsoft-365/compliance/collecting-data-for-ediscovery).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Add additionalSource](../api/ediscovery-sourcecollection-post-additionalsources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Add an additional **dataSource** object to the source collection.|
|[Add custodianSource](../api/ediscovery-sourcecollection-post-custodiansources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Add a custodian **dataSource** object to the source collection.|
|[Add noncustodialSource](../api/ediscovery-sourcecollection-post-noncustodialsources.md)|[microsoft.graph.ediscovery.noncustodialSource](../resources/ediscovery-noncustodialdatasource.md) collection|Add a non-custodial source **noncustodialSource** object to the source collection.|
|[List sourceCollections](../api/ediscovery-case-list-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get a list of the **sourceCollection** objects and their properties.|
|[Create sourceCollection](../api/ediscovery-case-post-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Create a new **sourceCollection** object.|
|[Get sourceCollection](../api/ediscovery-sourcecollection-get.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Read the properties and relationships of a **sourceCollection** object.|
|[Update sourceCollection](../api/ediscovery-sourcecollection-update.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Update the properties of a **sourceCollection** object.|
|[Delete sourceCollection](../api/ediscovery-sourcecollection-delete.md)|None|Delete a **sourceCollection** object.|
|[estimateStatistics](../api/ediscovery-sourcecollection-estimatestatistics.md)|None|Run an estimate of the number of emails and documents in the source collection.|
|[List additionalSources](../api/ediscovery-sourcecollection-list-additionalsources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Get a list of additional **dataSource** objects associated with a source collection.|
|[List custodianSources](../api/ediscovery-sourcecollection-list-custodiansources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Get a list of custodian **dataSource** objects associated with a source collection.|
|[List noncustodialSources](../api/ediscovery-sourcecollection-list-noncustodialsources.md)|[microsoft.graph.ediscovery.noncustodialSource](../resources/ediscovery-noncustodialdatasource.md) collection|Get a list of non-custodial sources **noncustodialSource** objects associated with a source collection.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|The query string in KQL (Keyword Query Language) query. For details, see [Keyword queries and search conditions for Content Search and eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/keyword-queries-and-search-conditions).  You can refine searches by using fields paired with values; for example, *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016*|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **sourceCollection**.|
|createdDateTime|DateTimeOffset|The date and time the **sourceCollection** was created.|
|dataSourceScopes|microsoft.graph.ediscovery.dataSourceScopes|When specified, the collection will span across a service for an entire workload. Possible values are: `none`,`allTenantMailboxes`,`allTenantSites`,`allCaseCustodians`,`allCaseNoncustodialDataSources`.|
|description|String|The description of the **sourceCollection**|
|displayName|String|The display name of the **sourceCollection**|
|id|String| The ID for the **sourceCollection**. Read-only. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|The last user who modified the **sourceCollection**.|
|lastModifiedDateTime|DateTimeOffset|The last date and time the **sourceCollection** was modified.|

### dataSourceScopes values

|Member|Description|
|:----|-----------|
|none|Do not specify any scopes - locations would be referenced separately.|
|allTenantMailboxes|Include all tenant mailboxes in the **sourceCollection**.|
|allTenantSites|Include all tenant sites in the **sourceCollection**.|
|allCaseCustodians|Include all custodian locations in the **sourceCollection**.|
|allCaseNoncustodialDataSources|Include all non-custodial data sources in the **sourceCollection**.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|additionalSources|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Adds an additional source to the **sourceCollection**.|
|addToReviewSetOperation|[microsoft.graph.ediscovery.addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md)|Adds the results of the **sourceCollection** to the specified **reviewSet**.|
|custodianSources|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|**Custodian** sources that are included in the **sourceCollection**.|
|lastEstimateStatisticsOperation|[microsoft.graph.ediscovery.estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)|The last estimate operation associated with the **sourceCollection**.|
|noncustodialSources|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) collection|**noncustodialDataSource** sources that are included in the **sourceCollection**|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.sourceCollection",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.sourceCollection",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "contentQuery": "String",
  "dataSourceScopes": "String"
}
```
