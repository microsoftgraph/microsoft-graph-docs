---
title: "driveItemUploadableProperties resource type"
description: "The driveItemUploadableProperties resource represents an item being uploaded when creating an upload session."
localization_priority: Normal
author: "JeremyKelley"
ms.prod: ""
doc_type: "resourcePageType"
---

# driveItemUploadableProperties resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **driveItemUploadableProperties** resource represents an item being uploaded when [creating an upload session](../api/driveitem-createuploadsession.md).

## Properties

| Property     | Type                              | Description                                                                                         |
|:-------------|:----------------------------------|:----------------------------------------------------------------------------------------------------|
|description   |String                             | Provides a user-visible description of the item. Read-write. Only on OneDrive Personal.             |
|fileSize      |Int64                              | Provides an expected file size to perform a quota check prior to upload. Only on OneDrive Personal. |
|fileSystemInfo|[fileSystemInfo](filesysteminfo.md)| File system information on client. Read-write.                                                      |
|name          |String                             | The name of the item (filename and extension). Read-write.                                          |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.driveItemUploadableProperties",
  "baseType": null
}-->

```json
{
  "description": "String",
  "fileSize": 1024,
  "fileSystemInfo": {"@odata.type": "microsoft.graph.fileSystemInfo"},
  "name": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "driveItemUploadableProperties resource",
  "keywords": "driveItemUploadableProperties,createUploadSession",
  "section": "documentation",
  "tocPath": ""
}-->

