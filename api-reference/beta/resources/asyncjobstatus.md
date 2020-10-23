---
author: JeremyKelley
description: "This resource provides information on the status of a asynchronous job progress."
ms.date: 09/10/2017
title: AsyncJobStatus
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---

# AsyncJobStatus resource

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource provides information on the status of a asynchronous job progress.

The following API calls return **AsyncJobStatus** resources:

* [Copy Item](../api/driveitem-copy.md)

## JSON representation

<!-- { "blockType": "resource", "@type": "microsoft.graph.asyncJobStatus", "@type.aka": "oneDrive.asyncOperationStatus" } -->

```json
{
  "percentageComplete": 100.0,
  "status": "notStarted | inProgress | completed | updating | failed | deletePending | deleteFailed | waiting"
}
```

## Properties

| Property name          | Type   | Description                                                                                |
|:-----------------------|:-------|:-------------------------------------------------------------------------------------------|
| **percentageComplete** | Double | A value between 0 and 100 that indicates the percentage complete.                          |
| **status**             | String | A string value that maps to an enumeration of possible values about the status of the job. |

<!--
{
  "type": "#page.annotation",
  "description": "AsyncJobResource provides details about how to poll for an async completion.",
  "keywords": "async,job status,async status,copy,upload from url",
  "section": "documentation",
  "suppressions": []
}
-->


