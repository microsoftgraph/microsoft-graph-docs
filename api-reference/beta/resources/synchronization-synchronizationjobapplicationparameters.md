---
title: "synchronizationJobApplicationParameters resource type"
description: "Represents the objects to be provisioned and the rules executed during on-demand provisioning."
author: "ArvindHarinder1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# synchronizationJobApplicationParameters resource type

Namespace: microsoft.graph

Represents the objects that will be provisioned and the synchronization rules executed. The resource is primarily used for on-demand provisioning. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ruleId|String|The identifier of a the synchronizationRule to be applied.|
|subjects|[synchronizationJobSubject](../resources/synchronization-synchronizationjobsubject.md) collection|The identifiers of one or more objects to which a synchronizationJob is to be applied.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationJobApplicationParameters"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationJobApplicationParameters",
  "ruleId": "String",
  "subjects": [
    {
      "@odata.type": "microsoft.graph.synchronizationJobSubject"
    }
  ]
}
```


