# synchronizationStatus resource type

Current status of the [synchronizationJob](synchronization_job.md).

## Properties

| Property                              | Type      | Description    |
|:--------------------------------------|:----------|:---------------|
|code|String|High-level status code of the synchronization job. Possible values are: `NotConfigured`, `NotRun`, `Active`, `Paused`, `Quarantine`.|
|countSuccessiveCompleteFailures|Int64|Number of consecutive times this job failed.|
|escrowsPruned|Boolean|`true` if the job's escrows (object-level errors) were pruned during initial synchronization. Escrows can be pruned if during initial synchronization we reach the threshold of errors which would normally put the job in quarantine. Instead of going into quarantine, synchronization opts out to clear job's errors and continue until the initial synchronization is completed. Once initial synchronization is completed, job will be paused and wait for customer's manual intervention to clean up the errors.|
|lastExecution|[synchronizationTaskExecution](synchronization_taskexecution.md)|Details of the last execution of the job.|
|lastSuccessfulExecution|[synchronizationTaskExecution](synchronization_taskexecution.md)|Details of the last execution of this job, which didn't have any errors|
|lastSuccessfulExecutionWithExports|[synchronizationTaskExecution](synchronization_taskexecution.md)|Details of the last execution of the job, which exported objects into the target directory|
|quarantine|[synchronizationQuarantine](synchronization_quarantine.md)|If job is in quarantine, quarantine details.|
|steadyStateFirstAchievedTime|DateTimeOffset|Time when steady state (no more changes to process) was first achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|steadyStateLastAchievedTime|DateTimeOffset|Time when steady state (no more changes to process) was last achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|synchronizedEntryCountByType|[stringKeyLongValuePair](synchronization_stringkeylongvaluepair.md) collection|Count of synchronized objects, listed by object type.|
|troubleshootingUrl|String||


##### synchronizationStatusCode details

| Value                              | Description    |
|:-----------------------------------|:---------------|
|NotConfigured                       |Job was not configured and never executed. No authorization was provided |
|NotRun                              |Job was configured, and possibly started, but haven't completed its first execution|
|Active                              |Job is executing periodically|
|Paused                              |Job was paused (usually by an administrator) and currently is not executing, but the state of the job is preserved|
|Quarantine                          |Job is in quarantine. This may happen due to high volume of errors, or critical errors such as revoked/expired credentials. While in quarantine, we will attempt to execute the job with reduced frequency|

### synchronizationJobExecution

Summarizes the results of the particular execution of the synchronization job

| Property          | Type      | Description    |
|:------------------|:----------|:---------------|
|activityIdentifier             |String     | Identifier of the job execution|
|countEntitled                  |Integer    | Count of processed entries which were assigned for this application|
|countEntitledForProvisioning   |Integer    | Count of processed entries which were assigned for provisioning|
|countEscrowed                  |Integer    | Count of entries which were escrowed (errors)|
|countEscrowedRaw               |Integer    | Count of entries which were escrowed, including system-generated escrows |
|countExported                  |Integer    | Count of exported entries|
|countExports                   |Integer    | Count of entries which were expected to be exported|
|countImported                  |Integer    | Count of imported entries|
|countImportedDeltas            |Integer    | Count of imported delta-changes|
|countImportedReferenceDeltas   |Integer    | Count of imported delta-changes pertaining to reference changes|
|state                          |String    | Code summarizing the result of this execution|
|error                          |synchronizationError    | If an error was encountered, contains an error object with the following properties: '{ "code": "String", "message": "String",  "tenantActionable": "Boolean" }`|
|timeBegan                      |DateTimeOffset    | Time when this job execution began |
|timeEnded                      |DateTimeOffset    | Time when this job execution ended |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationStatus"
}-->

```json
{
  "code": "String",
  "countSuccessiveCompleteFailures": 1024,
  "escrowsPruned": true,
  "lastExecution": {"@odata.type": "microsoft.graph.synchronizationTaskExecution"},
  "lastSuccessfulExecution": {"@odata.type": "microsoft.graph.synchronizationTaskExecution"},
  "lastSuccessfulExecutionWithExports": {"@odata.type": "microsoft.graph.synchronizationTaskExecution"},
  "quarantine": {"@odata.type": "microsoft.graph.synchronizationQuarantine"},
  "steadyStateFirstAchievedTime": "String (timestamp)",
  "steadyStateLastAchievedTime": "String (timestamp)",
  "synchronizedEntryCountByType": [{"@odata.type": "microsoft.graph.stringKeyLongValuePair"}],
  "troubleshootingUrl": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->