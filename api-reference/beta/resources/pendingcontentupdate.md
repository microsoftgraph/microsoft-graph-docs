---
title: "pendingContentUpdate"
description: "The pendingContentUpdate resource indicates that an operation that might affect the binary content of the driveItem is pending completion."
localization_priority: Normal
author: "JeremyKelley"
ms.date: 08/06/2019
ms.prod: ""
doc_type: "resourcePageType"
---

# pendingContentUpdate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates that an operation that might affect the binary content of the **driveItem** is pending completion.

## Properties

| Property     | Type         | Description |
|:-------------|:-------------|:------------|
|queuedDateTime|DateTimeOffset|Date and time the pending binary operation was queued in UTC time. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.pendingContentUpdate",
  "baseType": null
}-->

```json
{
  "queuedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The pendingContentUpdate resource indicates that an operation that may affect the binary content of the DriveItem is pending completion.",
  "keywords": "pendingoperation,operation,pendingcontentupdate",
  "section": "documentation",
  "tocPath": ""
}-->


