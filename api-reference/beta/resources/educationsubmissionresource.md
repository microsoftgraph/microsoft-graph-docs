# educationSubmissionResource resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A wrapper around a resource for use on a submission. The wrapper adds a pointer to the assignment resource if this was copied from the assignment.  


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get educationSubmissionResource](../api/educationsubmissionresource_get.md) | [educationSubmissionResource](educationsubmissionresource.md) |Read properties and relationships of an **educationSubmissionResource** object.|
|[Delete](../api/educationsubmissionresource_delete.md) | None |Delete an **educationSubmissionResource** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignmentResourceUrl|String|Pointer to the assignment from which this resource was copied. If this is null, the student uploaded the resource.|
|id|String| Read-only.|
|resource|[educationResource](educationresource.md)|Resource object.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationSubmissionResource"
}-->

```json
{
  "assignmentResourceUrl": "String",
  "id": "String (identifier)",
  "resource": {"@odata.type": "microsoft.graph.educationResource"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationSubmissionResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->