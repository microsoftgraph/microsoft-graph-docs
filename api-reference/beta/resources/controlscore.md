---
title: " controlScore resource type"
description: "This resource contains a tenant score and description for an individual control."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "preetikr"
---

#  controlScore resource type

Namespace: microsoft.graph

This resource contains a tenant score and description for an individual control.

|Name |Type |Description |
|:--|:--|:--|
|	controlName	|	String	|	Control unique name	|
|	score	|	Double	|  Tenant achieved score for the control (it varies day by day depending on tenant operations on the control). |
|	controlCategory	|	String	|  Control action category (Identity, Data, Device, Apps, Infrastructure). |
|	description	|	String	|  Description of the control. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.controlScore"
}-->

```json
{
  "controlName": "String",
  "score": "Double",
  "controlCategory": "String",
  "description": "String"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "controlScore resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


