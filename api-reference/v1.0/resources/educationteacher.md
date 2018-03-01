# educationTeacher resource type

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `teacher`.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|externalId|String| ID of the teacher in the source system.|
|teacherNumber|String|Teacher number.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationTeacher"
}-->

```json
{
  "externalId": "String",
  "teacherNumber": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationTeacher resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->