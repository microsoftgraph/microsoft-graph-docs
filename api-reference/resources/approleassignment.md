# appRoleAssignment resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get appRoleAssignment](../api/approleassignment_get.md) | [appRoleAssignment](approleassignment.md) |Read properties and relationships of appRoleAssignment object.|
|[Update](../api/approleassignment_update.md) | [appRoleAssignment](approleassignment.md)	|Update appRoleAssignment object. |
|[Delete](../api/approleassignment_delete.md) | None |Delete appRoleAssignment object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|creationTimestamp|[dateTimeOffset](datetimeoffset.md)||
|id|guid| Read-only.|
|principalDisplayName|string||
|principalId|guid||
|principalType|string||
|resourceDisplayName|string||
|resourceId|guid||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.approleassignment"
}-->

```json
{
  "creationTimestamp": "String (timestamp)",
  "id": "guid (identifier)",
  "principalDisplayName": "string",
  "principalId": "guid",
  "principalType": "string",
  "resourceDisplayName": "string",
  "resourceId": "guid"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appRoleAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->