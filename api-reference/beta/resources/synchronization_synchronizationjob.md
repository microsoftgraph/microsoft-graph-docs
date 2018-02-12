# synchronizationJob resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory. The synchronization job is always specific to a particular instance of an application in your tenant. As part of the synchronization job setup, you need to give authorization to read and write objects in your target directory, and customize the job's synchronization schema.

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[List](../api/synchronization_synchronizationjob_list.md)             |[synchronizationJob](synchronization_synchronizationjob.md) collection  |List existing jobs for a given application instance (service principal).|
|[Get synchronizationJob](../api/synchronization_synchronizationjob_get.md) | [synchronizationJob](synchronization_synchronizationjob.md) |Read properties and relationships of a synchronizationJob object.|
|[Create](../api/synchronization_synchronizationjob_post.md)         |[synchronizationJob](synchronization_synchronizationjob.md)   |Create new job for a given application.|
|[Start](../api/synchronization_synchronizationjob_start.md)          |None   |Start synchronization. If the job is in a paused state, it continues from the point where the job was paused. If the job is in quarantine, the quarantine status is cleared.|
|[Restart](../api/synchronization_synchronizationjob_restart.md)      |None   |Force the job to start over and re-process all the objects in the directory.|
|[Pause](../api/synchronization_synchronizationjob_pause.md)          |None   |Temporarily stop synchronization. All the progress, including job state, is persisted, and the job will continue from where it left off when a [Start](../api/synchronization_synchronizationjob_start.md) call is made.|
|[Delete](../api/synchronization_synchronizationjob_delete.md)        |None   |Stop synchronization, and permanently delete all the state associated with the job.|
|[Get synchrnoizationSchema](../api/synchronization_synchronizationschema_get.md)    |[synchronizationSchema](synchronization_synchronizationschema.md)   |Retrieve the job's effective synchronization schema.|
|[Update synchroizationSchema](../api/synchronization_synchronizationschema_update.md)    |None   |Update the job's synchronization schema. |
|[Validate credentials](../api/synchronization_synchronizationjob_validatecredentials.md)|None|Test provided credentials against target directory.|

## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|id             |String                     |Unique synchronization job identifier. Read-only.|
|schedule       |[synchronizationSchedule](synchronization_synchronizationschedule.md)|Schedule used to run the job. Read-only.|
|status         |[synchronizationStatus](synchronization_synchronizationstatus.md)     |Status of the job, which includes when the job was last run, current job state, and errors.|
|templateId     |String    |Identifier of the [synchronization template](synchronization_synchronizationtemplate.md) this job is based on.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|schema|[synchronizationSchema](synchronization_synchronizationschema.md)| The synchronization schema configured for the job.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationJob"
}-->

```json
{
  "id": "String (identifier)",
  "schedule": {"@odata.type": "microsoft.graph.synchronizationSchedule"},
  "status": {"@odata.type": "microsoft.graph.synchronizationStatus"},
  "templateId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "synchronizationJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->