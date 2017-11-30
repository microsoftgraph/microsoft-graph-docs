# educationResource resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A superclass for all resource objects in the system. A resource is associated with an **Assignment** and/or **Submission**, which represents the learning object that is being
handed out or handed in. You cannot instantiate a resource directly; you must make a subclass that will represent the type of resource being used.

This resource stores the common properties across all resource types.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|[identitySet](identityset.md)|Who created the resource.|
|createdDateTime|Moment in time when the resource was created.  DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|displayName|String|Display name of resource.|
|lastModifiedBy|[identitySet](identityset.md)|Who was the last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified.  The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationResource"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->