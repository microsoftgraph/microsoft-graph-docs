---
title: "detailsInfo resource type"
description: "A property bag that can contain any information about the associated identity or system."
localization_priority: Normal
author: "besiler"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# detailsInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A property bag that can contain any information about the associated identity or system. This can include details about the property that is being provisioned or the source/target system.

## Properties
The **detailsInfo** resource is a JSON string that contains additional properties such as **ApplicationId**, **ObjectId**, and **UPN**. The set of properties varies based on the type of resource that is being provisioned. [List provisioningObjectSummary](../api/provisioningobjectsummary-list.md) shows an example of this.

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.detailsInfo",
  "openType": true,
 "optionalProperties": [
 
 ],
}-->
``` json
{
  "@odata.type": "microsoft.graph.detailsInfo"
}
```


