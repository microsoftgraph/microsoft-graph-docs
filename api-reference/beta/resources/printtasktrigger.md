---
title: printTaskTrigger resource type
description: Determines the conditions under which a new printTask will be executed based on the associated printTaskDefinition.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: resourcePageType
---

# printTaskTrigger resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Determines the condition under which a new [printTask](printtask.md) will be triggered based on the associated [printTaskDefinition](printtaskdefinition.md).

For details about how to use this resource to add pull printing support to Universal Print, see [Extending Universal Print to support pull printing](/graph/universal-print-concept-overview#extending-universal-print-to-support-pull-printing).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/printer-list-tasktriggers.md) | [printTaskTrigger](printtasktrigger.md) collection | Get a list of printTaskTriggers associated with a particular [printer](printer.md). |
| [Get](../api/printtasktrigger-get.md) | [printTaskTrigger](printtasktrigger.md) | Get the printTaskTrigger associated with a particular [printTask](printtask.md). |


## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printTaskTrigger's identifier. Read-only.|
|event|printEvent|The Universal Print event that will cause a new [printTask](printtask.md) to be triggered. Valid values are described in the following table.|

### printEvent values

|Member|Value|Description|
|:---|:---|:---|
|jobStarted|0|Represents an event that occurs when a new print job is started.|
|unknownFutureValue|1|Evolvable enumeration sentinel value. Do not use.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|definition|[printTaskDefinition](printtaskdefinition.md)|An abstract definition that will be used to create a [printTask](printtask.md) when triggered by a print event. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printTaskTrigger",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "event": {"@odata.type": "microsoft.graph.printEvent"},
  "definition": {"@odata.type": "microsoft.graph.printTaskDefinition"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printTaskTrigger resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


