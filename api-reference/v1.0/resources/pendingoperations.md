---
title: "pendingOperations"
description: "The pendingOperations resource indicates that one or more operations that might affect the state of the driveItem are pending completion."
localization_priority: Normal
author: "learafa"
ms.prod: "files"
doc_type: "resourcePageType"
---

# pendingOperations resource type

Namespace: microsoft.graph

Indicates that one or more operations that might affect the state of the **driveItem** are pending completion.

## Properties

| Property                | Type        | Description |
|:------------------------|:------------|:------------|
|**pendingContentUpdate** |[pendingContentUpdate](pendingcontentupdate.md)|A property that indicates that an operation that might update the binary content of a file is pending completion.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.pendingOperations",
  "baseType": null
}-->

```json
{
  "pendingContentUpdate": {"@odata.type": "microsoft.graph.pendingContentUpdate"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The pendingOperations resource indicates that an operation that may affect the state of the DriveItem is pending completion.",
  "keywords": "pendingoperations,pendingoperations,operation,pendingcontentupdate",
  "section": "documentation",
  "tocPath": ""
}-->

