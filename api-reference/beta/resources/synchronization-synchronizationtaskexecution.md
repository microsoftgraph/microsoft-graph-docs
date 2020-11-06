---
title: "synchronizationTaskExecution resource type"
description: "Summarizes the results of the synchronization job run."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# synchronizationTaskExecution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Summarizes the results of the synchronization job run.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activityIdentifier           |String |Identifier of the job run.|
|countEntitled                |Int64  |Count of processed entries that were assigned for this application.|
|countEntitledForProvisioning |Int64  |Count of processed entries that were assigned for provisioning.|
|countEscrowed                |Int64  |Count of entries that were escrowed (errors).|
|countEscrowedRaw             |Int64  |Count of entries that were escrowed, including system-generated escrows.|
|countExported                |Int64  |Count of exported entries.|
|countExports                 |Int64  |Count of entries that were expected to be exported.|
|countImported                |Int64  |Count of imported entries.|
|countImportedDeltas          |Int64  |Count of imported delta-changes.|
|countImportedReferenceDeltas |Int64  |Count of imported delta-changes pertaining to reference changes.|
|error                        |[synchronizationError](synchronization-synchronizationerror.md)|If an error was encountered, contains a **synchronizationError** object with details.|
|state                        |String |Code summarizing the result of this run. Possible values are: `Succeeded`, `Failed`, `EntryLevelErrors`.|
|timeBegan                    |DateTimeOffset|Time when this job run began. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|timeEnded                    |DateTimeOffset|Time when this job run ended. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationTaskExecution"
}-->

```json
{
  "activityIdentifier": "String",
  "countEntitled": 1024,
  "countEntitledForProvisioning": 1024,
  "countEscrowed": 1024,
  "countEscrowedRaw": 1024,
  "countExported": 1024,
  "countExports": 1024,
  "countImported": 1024,
  "countImportedDeltas": 1024,
  "countImportedReferenceDeltas": 1024,
  "error": {"@odata.type": "microsoft.graph.synchronizationError"},
  "state": "String",
  "timeBegan": "String (timestamp)",
  "timeEnded": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationTaskExecution resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


