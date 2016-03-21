# locationConstraint resource type

The conditions stated by a client for the location of a meeting.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.locationconstraint"
}-->

```json
{
  "isRequired": true,
  "locations": [{"@odata.type": "microsoft.graph.location"}],
  "suggestLocation": true
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|isRequired|Boolean|The client requests the service to include in the response a meeting location for the meeting.|
|locations|[Location](location.md) collection|One or more locations that the client requests for the meeting.|
|suggestLocation|Boolean|The client requests the service to suggest one or more meeting locations.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "locationConstraint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->