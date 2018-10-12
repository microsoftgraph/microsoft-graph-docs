# directoryObject resource type

Represents an Azure Active Directory object. The **directoryObject** type is the base type for many other directory entity types.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get directoryObject](../api/directoryobject_get.md) | [directoryObject](directoryobject.md) |Read the properties  of a directory object.|
|[Delete directoryObject](../api/directoryobject_delete.md) | None |Delete a directory object. |
|[checkMemberGroups](../api/directoryobject_checkmembergroups.md)|String collection|Check for membership in a list of groups. The check is transitive.|
|[getMemberGroups](../api/directoryobject_getmembergroups.md)|String collection|Return all the groups that the user, group, or directory object is a member of. The check is transitive.|
|[getMemberObjects](../api/directoryobject_getmemberobjects.md)|String collection| Return all of the groups and directory roles that the user, group, or directory object is a member of. The check is transitive. |
|[getByIds](../api/directoryobject_getbyids.md) | [directoryObject](directoryobject.md) collection | Get a set of directory objects based on a set of supplied ids. |

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String|A Guid that is the unique identifier for the object; for example, 12345678-9abc-def0-1234-56789abcde. Key. Not nullable. Read-only.|

## Relationships

None


## JSON representation

Here is a JSON representation of the resource

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.directoryObject",
  "@odata.annotations": [
    {
      "capabilities": {
        "skippable": false,
        "countable": false,
        "expandable": false,
        "filterable": false,
        "referenceable": false,
        "selectable": false
      }
    }
  ]
}-->

```json
{
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
