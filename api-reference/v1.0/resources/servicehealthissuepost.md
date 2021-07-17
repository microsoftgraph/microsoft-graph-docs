---
title: "serviceHealthIssuePost resource type"
description: "Represents a historical post in a service health issue."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: resourcePageType
---

# serviceHealthIssuePost resource type

Namespace: microsoft.graph

Represents a historical post in a [service health issue](../resources/servicehealthissue.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The published time of the post.|
|description|[itemBody](../resources/itembody.md)|The content of the service issue post.|
|postType|postType|The post type of the service issue historical post. Possible values are: `regular`, `quick`, `strategic`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.serviceHealthIssuePost"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealthIssuePost",
  "createdDateTime": "String (timestamp)",
  "postType": "String",
  "description": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```

