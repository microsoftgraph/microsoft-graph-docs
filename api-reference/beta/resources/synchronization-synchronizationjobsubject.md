---
title: "synchronizationJobSubject resource type"
description: "Represents the objects that will be provisioned during on-demand provisioning."
author: "ArvindHarinder1"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# synchronizationJobSubject resource type

Namespace: microsoft.graph

Represents the objects that will be provisioned during on-demand provisioning.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|objectId|String|The identifier of an object to which a synchronizationJob  is to be applied.|
|objectTypeName|String|The type of the object to which a synchronizationJob  is to be applied.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.synchronizationJobSubject"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.synchronizationJobSubject",
  "objectId": "String",
  "objectTypeName": "String"
}
```


