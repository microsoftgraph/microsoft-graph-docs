---
title: "noncustodialDataSource resource type"
description: "Non-custodial data sources lets you add data to a case without having to associate it to a custodian"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# noncustodialDataSource resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Non-custodial data sources let you add data to a case without having to associate it to a custodian. To learn more, visit [Add non-custodial data sources to an Advanced eDiscovery case
](https://docs.microsoft.com/microsoft-365/compliance/non-custodial-data-sources)

Inherits from [dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List noncustodialDataSources](../api/ediscovery-noncustodialdatasource-list.md)|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) collection|Get a list of the [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) objects and their properties.|
|[Get noncustodialDataSource](../api/ediscovery-noncustodialdatasource-get.md)|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md)|Read the properties and relationships of a [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) object.|
|[Release dataSource](../api/ediscovery-noncustodialdatasource-release.md)|None|Releases a non-custodial data source.|
|[List dataSource](../api/ediscovery-noncustodialdatasource-list-datasource.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Get the dataSource resources from the dataSource navigation property.|
|[Create dataSource](../api/ediscovery-noncustodialdatasource-post.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md)|Create a new dataSource object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applyHoldToSource|Boolean|Indicates if hold is applied to non-custodial data source (such as mailbox or site).|
|createdDateTime|DateTimeOffset|Created date and time of the nonCustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|displayName|String|Display name of the noncustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|id|String|Unique identifier of the nonCustodialDataSource. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time of the nonCustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|releasedDateTime|DateTimeOffset|Date and time that the nonCustodialDataSource was released from the case. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md).|
|status|microsoft.graph.ediscovery.dataSourceContainerStatus|Latest status of the nonCustodialDataSource. Inherited from [microsoft.graph.ediscovery.dataSourceContainer](../resources/ediscovery-datasourcecontainer.md). Possible values are: `Active`, `Released`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|dataSource|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md)|User source or SharePoint site data source as non-custodial data source.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.noncustodialDataSource",
  "baseType": "microsoft.graph.ediscovery.dataSourceContainer",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.noncustodialDataSource",
  "id": "String (identifier)",
  "status": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "applyHoldToSource": "Boolean"
}
```
