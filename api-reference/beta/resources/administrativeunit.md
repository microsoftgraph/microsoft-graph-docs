# administrativeUnit resource type

An administrative unit provides a conceptual container for User and Group directory objects. Administrative units enable you to delegate finer granularity permissions to administrative roles  (ie: departmental, regional, etc.). With administrative units, a central administrator can delegate administrative permissions over subsets of users and applying policies to a subset of users to a regional administrator. This topic provides descriptions of the declared properties and navigation properties exposed by the administrativeUnit entity, as well as the operations and functions that can be called on the administrativeUnits resource.


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create admistrativeUnit](../api/administrativeunit_post_adminstrativeunit.md) |[administrativeUnit](adminstrativeUnit.md)| Create a new administrative unit.|
|[List administrativeUnits](../api/administrativeunit_list.md) | [administrativeUnit](administrativeunit.md) collection |List properties of all administrativeUnits.|
|[Get administrativeUnit](../api/administrativeunit_get.md) | [administrativeUnit](administrativeunit.md) |Read properties and relationships of a specific administrativeUnit object.|
|[Update adminstrativeUnit](../api/administrativeunit_update.md) | [administrativeUnit](administrativeunit.md)	|Update administrativeUnit object. |
|[Delete adminstrativeUnit](../api/administrativeunit_delete.md) | None |Delete administrativeUnit object. |
|[Add a member](../api/administrativeunit_post_members.md) |[directoryObject](directoryObject.md)| Add a member (user or group).|
|[List members](../api/administrativeunit_list_members.md) |[directoryObject](directoryObject.md) collection| Get the list of (user and group) members.|
|[Get a member](../api/administrativeunit_get_members.md) |[directoryObject](directoryObject.md)| Get a specific member.|
|[Remove a member](../api/administrativeunit_delete_members.md) |[directoryObject](directoryObject.md)| Remove a member.|
|[Add scoped-role administrator](../api/administrativeunit_post_scopedadministrators.md) |[scopedRoleMembership](scopedrolemembership.md)| Add a scoped-role administrator.|
|[List scoped-role administrators](../api/administrativeunit_list_scopedadministrators.md) |[scopedRoleMembership](scopedrolemembership.md) collection| Get the list of scoped-role adminstrators.|
|[Get a scoped-role administrator](../api/administrativeunit_get_scopedadministrators.md) |[scopedRoleMembership](scopedrolemembership.md)| Get a specific scoped-role administrator.|
|[Remove a scoped-role administrator](../api/administrativeunit_delete_scopedadministrators.md) |[scopedRoleMembership](scopedrolemembership.md)| Remove a scoped-role adminstrator.|

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string|An optional description for the administrative unit.|
|displayName|string|Display name for the administrative unit.|
|id|string|Unique identifier for the administrative unit. Read-only.|
|visibility|string|Controls whether the adminstrative unit and its members are hidden or public. Can be set to...|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|members|[directoryObject](directoryObject.md) collection|Users and groups that are members of this Adminsitrative Unit. HTTP Methods: GET (list members), POST (add members), DELETE (remove members).|
|scopedAdministrators|[scopedRoleMembership](scopedrolemembership.md) collection| Scoped administrators of this Administrative Unit.  HTTP Methods: GET (list scopedRoleMemberships), POST (add scopedRoleMembership), DELETE (remove scopedRoleMembership). |

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.administrativeunit"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "visibility": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "administrativeUnit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->