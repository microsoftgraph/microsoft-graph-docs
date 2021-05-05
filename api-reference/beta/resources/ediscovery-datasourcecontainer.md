---
title: "dataSourceContainer resource type"
description: "Base class for Custodians and Non-Custodial data sources."
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# dataSourceContainer resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Base class for [custodian](../resources/ediscovery-custodian.md) and [noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md).

Inherits from [entity](../resources/entity.md).

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Created date and time of the dataSourceContainer entity.|
|displayName|String|Display name of the dataSourceContainer entity.|
|id|String|Unique identifier of the dataSourceContainer. Inherited from [entity](../resources/entity.md)|
|lastModifiedDateTime|DateTimeOffset|Last modified date and time of the dataSourceContainer.|
|releasedDateTime|DateTimeOffset|Date and time that the dataSourceContainer was released from the case.|
|status|microsoft.graph.ediscovery.dataSourceContainerStatus|Latest status of the dataSourceContainer. Possible values are: `Active`, `Released`.|

### dataSourceContainerStatus values

|Member|Description|
|:---|:---|
|Active|The dataSourceContainer is on hold in the case.|
|Released|The dataSourceContainer was released from hold in the case.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.dataSourceContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.dataSourceContainer",
  "id": "String (identifier)",
  "status": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```
