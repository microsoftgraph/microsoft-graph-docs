# administrativeUnit resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

An administrative unit provides a conceptual container for User and Group directory objects. Using administrative units, a company administrator can now delegate administrative responsibilities to manage the users and groups contained within or scoped to an administrative unit to a regional or departmental administrator.

Let's look at an example. Imagine that Contoso Corp is made up of two divisions - a West Coast Division and an East Coast Division. Directory roles at Contoso are scoped to the entire tenant. Lee, a Contoso company administrator, wants to delegate administrative responsibilities, but scope them to the West Coast Division or the East Coast division.  Lee can create a *West Coast admistrative unit* and place all West Coast users into this administrative unit.  Similarly, Lee can create an *East Coast adminstrative unit*.  Now Lee, can start delegating administrative responsibilities to others, but **scoped** to the new administrative units he's created. Lee places Jennifer in a *helpdesk administrator* role **scoped** to the *West Coast administrative unit*.  This allows Jennifer to reset any user's password, but only if those users are in the *West Coast administrative unit*.  Similarly, Lee places Dave in a *user account administrator* role **scoped** to the *East Coast administrative unit*.  This allows Dave to update users, assign licenses and reset any user's password, but only if those users are in the *East Coast administrative unit*. For a video overview, please see [Introduction to Azure Active Directory Administrative Units](https://channel9.msdn.com/Series/Windows-Azure-Active-Directory/Introduction-to-Azure-Active-Directory-Administrative-Units).

This resource lets you add your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).

This topic provides descriptions of the declared properties and navigation properties exposed by the administrativeUnit entity, as well as the operations and functions that can be called on the administrativeUnits resource.


## Methods

| Method   | Return Type | Description |
|:---------------|:--------|:----------|
|[Create administrativeUnit](../api/administrativeunit_post_administrativeunits.md) | [administrativeUnit](administrativeunit.md) | Create a new administrative unit.|
|[List administrativeUnits](../api/administrativeunit_list.md) | [administrativeUnit](administrativeunit.md) collection |List properties of all administrativeUnits.|
|[Get administrativeUnit](../api/administrativeunit_get.md) | [administrativeUnit](administrativeunit.md) |Read properties and relationships of a specific administrativeUnit object.|
|[Update adminstrativeUnit](../api/administrativeunit_update.md) | [administrativeUnit](administrativeunit.md)	|Update administrativeUnit object. |
|[Delete adminstrativeUnit](../api/administrativeunit_delete.md) | None |Delete administrativeUnit object. |
|[Add a member](../api/administrativeunit_post_members.md) |[directoryObject](directoryObject.md)| Add a member (user or group).|
|[List members](../api/administrativeunit_list_members.md) |[directoryObject](directoryObject.md) collection| Get the list of (user and group) members.|
|[Get a member](../api/administrativeunit_get_members.md) |[directoryObject](directoryObject.md)| Get a specific member.|
|[Remove a member](../api/administrativeunit_delete_members.md) |[directoryObject](directoryObject.md)| Remove a member.|
|[Add scoped-role member](../api/administrativeunit_post_scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Add a scoped-role member.|
|[List scoped-role members](../api/administrativeunit_list_scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md) collection| Get the list of scoped-role adminstrators.|
|[Get a scoped-role member](../api/administrativeunit_get_scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Get a specific scoped-role member.|
|[Remove a scoped-role member](../api/administrativeunit_delete_scopedrolemembers.md) |[scopedRoleMembership](scopedrolemembership.md)| Remove a scoped-role member.|
|**Open extensions**| | |
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| | |
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|string|An optional description for the administrative unit.|
|displayName|string|Display name for the administrative unit.|
|id|string|Unique identifier for the administrative unit. Read-only.|
|visibility|string|Controls whether the adminstrative unit and its members are hidden or public. Can be set to HiddenMembership or Public. If not set, default behavior is Public. When set to HiddenMembership, only members of the administrative unit can list other members of the adminstrative unit.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for this Administrative Unit. Nullable.|
|members|[directoryObject](directoryObject.md) collection|Users and groups that are members of this Adminsitrative Unit. HTTP Methods: GET (list members), POST (add members), DELETE (remove members).|
|scopedRoleMembers|[scopedRoleMembership](scopedrolemembership.md) collection| Scoped-role members of this Administrative Unit.  HTTP Methods: GET (list scopedRoleMemberships), POST (add scopedRoleMembership), DELETE (remove scopedRoleMembership). |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.administrativeUnit"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "visibility": "string"
}

```


## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "administrativeUnit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->