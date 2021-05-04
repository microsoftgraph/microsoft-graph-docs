---
title: "complianceInformation resource type"
description: "This resource contains compliance data associated with secure score control."
localization_priority: Normal
author: preetikr
ms.prod: ""
doc_type: resourcePageType
---

#  complianceInformation resource type

Namespace: microsoft.graph

Contains compliance data associated with secure score control.

## Properties

|Property |Type |Description |
|:--|:--|:--|
|certificationName|String| Compliance certification name (for example, ISO 27018:2014, GDPR, FedRAMP, NIST 800-171) |
|certificationControls|[certificationControl](certificationcontrol.md) collection|Collection of the certification controls associated with certification|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.complianceInformation"
}-->

```json
{
  "certificationName": "String",
  "certificationControls": [{"@odata.type": "microsoft.graph.certificationControl"}]
}

```


<!-- {
  "type": "#page.annotation",
  "description": "complianceInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

