# educationSubmission resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Submissions are owned by an assignment. A submission represents the resources that an individual (or group) turn in for an assignment and the grade/feedback that is returned.
Submissions are automatically created when an assignment is published. The submission owns two lists of resources. Resources represent the user/groups working area while the submitted resources represent the resources that have actively been turned in by students.  

>**Note:** The status is read-only and the object is moved through the workflow via actions. 

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get educationSubmission](../api/educationsubmission_get.md) | [educationSubmission](educationsubmission.md) |Read properties and relationships of an **educationSubmission** object.|
|[List resources](../api/educationsubmission_list_resources.md) |[educationSubmissionResource](educationsubmissionresource.md) collection| Get an **educationSubmissionResource** object collection.|
|[List submittedResources](../api/educationsubmission_list_submittedresources.md) |[educationSubmissionResource](educationsubmissionresource.md) collection| Get an **educationSubmissionResource** object collection.|
|[Update](../api/educationsubmission_update.md) | [educationSubmission](educationsubmission.md)	|Update an **educationSubmission** object. |
|[Recall](../api/educationsubmission_recall.md)|[educationSubmission](educationsubmission.md)|A student uses the recall to move the state of the submission from submitted back to working.|
|[Release](../api/educationsubmission_release.md)|[educationSubmission](educationsubmission.md)|A teacher uses release to indicate that the grades/feedback can be shown to the student.|
|[Submit](../api/educationsubmission_submit.md)|[educationSubmission](educationsubmission.md)|A student uses submit to turn in the assignment. This will copy the resources into the **submittedResources** folder for grading and updates the status.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|feedback|[educationFeedback](educationfeedback.md)|Holds the feedback property which stores the teacher's notes back to students.|
|grade|[educationAssignmentGrade](educationassignmentgrade.md)|Holds the grade information a teacher assigns to this submission.|
|id|String| Read-only.|
|recipient|[educationSubmissionRecipient](educationsubmissionrecipient.md)|Who this submission is assigned to.|
|releasedBy|[identitySet](identityset.md)|User who moved the status of this submission to released.|
|releasedDateTime|DateTimeOffset|Moment in time when the submission was released. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|resourcesFolderUrl|String|Folder where all file resources for this submission need to be stored.|
|status|string| Read-Only. Possible values are: `working`, `submitted`, `completed`.|
|submittedBy|[identitySet](identityset.md)|User who moved the resource into the submitted state.|
|submittedDateTime|DateTimeOffset|Moment in time when the submission was moved into the submitted state. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|resources|[educationSubmissionResource](educationsubmissionresource.md) collection| Nullable.|
|submittedResources|[educationSubmissionResource](educationSubmissionResource.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSubmission"
}-->

```json
{
  "feedback": {"@odata.type": "microsoft.graph.educationFeedback"},
  "grade": {"@odata.type": "microsoft.graph.educationAssignmentGrade"},
  "id": "String (identifier)",
  "recipient": {"@odata.type": "microsoft.graph.educationSubmissionRecipient"},
  "releasedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "releasedDateTime": "String (timestamp)",
  "resourcesFolderUrl": "String",
  "status": "string",
  "submittedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "submittedDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationSubmission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->