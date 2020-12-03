---
title: printTask resource type
description: Represents a task that is executing or has been executed as a result of a Universal Print event.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a task that is executing or has been executed as a result of a Universal Print event.

For details about how to use this resource to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List (from printTaskDefintion)](../api/printtaskdefinition-list-tasks.md) | [printTask](printtask.md) | Get a list of tasks that have been created based on a particular printTaskDefinition. The list includes currently running tasks and recently completed tasks. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printTask's identifier. Read-only.|
|status|[printTaskStatus](printtaskstatus.md)|The current execution status of this printTask. **The calling application is responsible for updating this status when processing is finished, unless the related printJob has been redirected to another printer.** Failure to report completion will result in the related print job being blocked from printing and eventually deleted. |
|parentUrl|String|The URL for the print entity that triggered this task. For example, `https://graph.microsoft.com/beta/print/printers/{printerId}/jobs/{jobId}`. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|trigger|[printTaskTrigger](printtasktrigger.md)|The printTaskTrigger that triggered this task's execution. Read-only.|
|definition|[printTaskDefinition](printtaskdefinition.md)|The printTaskDefinition that was used to create this task. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printTask",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "status": {"@odata.type": "microsoft.graph.printTaskStatus"},
  "parentUrl": "String",
  "trigger": {"@odata.type": "microsoft.graph.printTaskTrigger"},
  "definition": {"@odata.type": "microsoft.graph.printTaskDefinition"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printTask resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


