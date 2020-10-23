---
title: "securityResource resource type"
description: "Represents the resources related to an alert."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# securityResource resource type

Namespace: microsoft.graph

Represents the resources related to an alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|resource|String|Name of the resource that is related to current alert. **Required**.|
|resourceType|[securityResourceType](#securityresourcetype-values)|Represents type of security resources related to an alert. Possible values are: `attacked`, `related`.|

### securityResourceType values

|Member|Value|Description|
|-|-|-|
|attacked|1|The resource was attacked in the alert.|
|related|2|The resource is related to the alert, though not directly attacked.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.securityResource"
}-->

```json
{
  "resource": "String",
  "resourceType": "@odata.type: microsoft.graph.securityResourceType"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "securityResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

