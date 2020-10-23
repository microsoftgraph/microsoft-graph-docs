---
title: " complianceInformation resource type"
description: "This resource contains compliance data associated with secure score control."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "preetikr"
---

#  complianceInformation resource type

Namespace: microsoft.graph

Contains compliance data associated with secure score control.

|Property |Type |Description |
|:--|:--|:--|
|certificationName | string | Compliance certification name (for example, ISO 27018:2014, GDPR, FedRAMP, NIST 800-171) |
|certificationControls | [certificationControl](certificationcontrol.md) collection | Collection of the certification controls associated with certification |

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
  "certificationControls": "Collection(microsoft.graph.complianceInformation)"
}

```


<!-- {
  "type": "#page.annotation",
  "description": "complianceInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


