---
title: "synchronizationJob resource type"
description: "Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory."
localization_priority: Normal
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.prod: "microsoft-identity-platform"
---

# synchronizationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Performs synchronization by periodically running in the background, polling for changes in one directory, and pushing them to another directory. The synchronization job is always specific to a particular instance of an application in your tenant. As part of the synchronization job setup, you need to give authorization to read and write objects in your target directory, and customize the job's synchronization schema.

## Methods

| Method        | Return Type               | Description                  |
|:--------------|:--------------------------|:-----------------------------|
|[List](../api/synchronization-synchronizationjob-list.md)             |[synchronizationJob](synchronization-synchronizationjob.md) collection  |List existing jobs for a given application instance (service principal).|
|[Get synchronizationJob](../api/synchronization-synchronizationjob-get.md) | [synchronizationJob](synchronization-synchronizationjob.md) |Read properties and relationships of a synchronizationJob object.|
|[Create](../api/synchronization-synchronizationjob-post.md)         |[synchronizationJob](synchronization-synchronizationjob.md)   |Create new job for a given application.|
|[Start](../api/synchronization-synchronizationjob-start.md)          |None   |Start synchronization. If the job is in a paused state, it continues from the point where the job was paused. If the job is in quarantine, the quarantine status is cleared.|
|[Restart](../api/synchronization-synchronizationjob-restart.md)      |None   |Force the job to start over and re-process all the objects in the directory.|
|[Pause](../api/synchronization-synchronizationjob-pause.md)          |None   |Temporarily stop synchronization. All the progress, including job state, is persisted, and the job will continue from where it left off when a [Start](../api/synchronization-synchronizationjob-start.md) call is made.|
|[Delete](../api/synchronization-synchronizationjob-delete.md)        |None   |Stop synchronization, and permanently delete all the state associated with the job.|
|[Get synchronizationSchema](../api/synchronization-synchronizationschema-get.md)    |[synchronizationSchema](synchronization-synchronizationschema.md)   |Retrieve the job's effective synchronization schema.|
|[Update synchronizationSchema](../api/synchronization-synchronizationschema-update.md)    |None   |Update the job's synchronization schema. |
|[Validate credentials](../api/synchronization-synchronizationjob-validatecredentials.md)|None|Test provided credentials against target directory.|
|[provisionOnDemand](../api/synchronization-synchronizationjob-provision-on-demand.md)|[synchronizationJobApplicationParameters](../resources/synchronization-synchronizationjobapplicationparameters.md) collection|Represents the objects that will be provisioned and the synchronization rules executed. The resource is primarily used for on-demand provisioning. |
## Properties

| Property      | Type      | Description    |
|:--------------|:----------|:---------------|
|id             |String                     |Unique synchronization job identifier. Read-only.|
|schedule       |[synchronizationSchedule](synchronization-synchronizationschedule.md)|Schedule used to run the job. Read-only.|
|status         |[synchronizationStatus](synchronization-synchronizationstatus.md)     |Status of the job, which includes when the job was last run, current job state, and errors.|
|synchronizationJobSettings   |[keyValuePair](keyvaluepair.md)    |Settings associated with the job. Some settings are inherited from the template.|
|templateId     |String    |Identifier of the [synchronization template](synchronization-synchronizationtemplate.md) this job is based on.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|schema|[synchronizationSchema](synchronization-synchronizationschema.md)| The synchronization schema configured for the job.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.synchronizationJob"
}-->

```json
{
  "id": "String (identifier)",
  "schedule": {"@odata.type": "microsoft.graph.synchronizationSchedule"},
  "status": {"@odata.type": "microsoft.graph.synchronizationStatus"},
  "synchronizationJobSettings": {"@odata.type": "microsoft.graph.keyValuePair"},
  "templateId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


