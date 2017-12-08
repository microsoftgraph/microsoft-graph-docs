# synchronizationTaskExecution resource type

Summarizes the results of the particular execution of the synchronization job

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activityIdentifier           |String |Identifier of the job execution.|
|countEntitled                |Int64  |Count of processed entries which were assigned for this application.|
|countEntitledForProvisioning |Int64  |Count of processed entries which were assigned for provisioning.|
|countEscrowed                |Int64  |Count of entries which were escrowed (errors).|
|countEscrowedRaw             |Int64  |Count of entries which were escrowed, including system-generated escrows.|
|countExported                |Int64  |Count of exported entries.|
|countExports                 |Int64  |Count of entries which were expected to be exported.|
|countImported                |Int64  |Count of imported entries.|
|countImportedDeltas          |Int64  |Count of imported delta-changes.|
|countImportedReferenceDeltas |Int64  |Count of imported delta-changes pertaining to reference changes.|
|error                        |[synchronizationError](synchronization_error.md)|If an error was encountered, contains synchronizationError with details.|
|state                        |String |Code summarizing the result of this execution. Possible values are: `Succeeded`, `Failed`, `EntryLevelErrors`.|
|timeBegan                    |DateTimeOffset|Time when this job execution began. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|timeEnded                    |DateTimeOffset|Time when this job execution ended. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|

## JSON representation

Here is a JSON representation of the resource.

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
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationTaskExecution resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->