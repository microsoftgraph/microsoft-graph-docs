---
title: "serviceHealth resource type"
description: "Represents the health information of a service."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: resourcePageType
---

# serviceHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the health information of a service.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get serviceHealth](../api/servicehealth-get.md)|[serviceHealth](../resources/servicehealth.md)|Retrieve the properties and relationships of a [serviceHealth](../resources/servicehealth.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The service id.|
|service|String|The service name.|
|status|serviceHealthStatus|Show the overral service health status. Possible values are: `serviceOperational`, `investigating`, `restoringService`, `verifyingService`, `serviceRestored`, `postIncidentReviewPublished`, `serviceDegradation`, `serviceInterruption`, `extendedRecovery`, `falsePositive`, `investigationSuspended`, `resolved`, `mitigatedExternal`, `mitigated`, `resolvedExternal`, `confirmed`, `reported`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|issues|Collection([serviceHealthIssue](../resources/servicehealthissue.md))|A collection of issues happened on the service, with detailed information for each issue.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceHealth",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealth",
  "service": "String",
  "status": "String",
  "id": "String (identifier)"
}
```

