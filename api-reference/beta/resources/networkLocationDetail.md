---
title: "networkLocationDetail resource type"
description: "Indicates details associated with the network location. ."
localization_priority: Normal
doc_type: resourcePageType
---

# networkLocationDetail resource type
Indicates details associated with the network location.



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|networkType|networkType|Provides the type of the network. The possible values are `intranet`, `extranet`, `namedNetwork`, and `trusted`.|
|networkNames|String collection|Names of the network.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.networkLocationDetail"
}-->

```json
{
  "networkType": "string",
  "networkNames": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "networkLocationDetail resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
