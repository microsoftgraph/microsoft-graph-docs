# appRoleAssignment resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Used to record when a user or group is assigned to an application. In this case, the role assignment will result in an application tile showing up on the user's app access panel. This entity may also be used to grant another application (modeled as a service principal) access to a resource application in a particular role. You can create, read, update, and delete role assignments.


## JSON representation

Here is a JSON representation of the resource

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
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|creationTimestamp|DateTimeOffset|The time when the grant was created.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|Guid|The role id that was assigned to the principal.  This role must be declared by the target resource application **resourceId** in its **appRoles** property. Where the resource does not declare any permissions, a default id (zero GUID) must be specified. Key. Not nullable. |
|principalDisplayName|String|The display name of the principal that was granted the access.|
|principalId|Guid|The unique identifier (**id**) for the principal being granted the access. Required on create.            |
|principalType|String|The type of principal.  This can either be "User", "Group" or "ServicePrincipal".|
|resourceDisplayName|String|The display name of the resource to which the assignment was made.|
|resourceId|Guid|The unique identifier (**id**) for the target resource (service principal) for which the assignment was made.|

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get appRoleAssignment](../api/approleassignment_get.md) | [appRoleAssignment](approleassignment.md) |Read properties and relationships of appRoleAssignment object.|
|[Update](../api/approleassignment_update.md) | [appRoleAssignment](approleassignment.md)	|Update appRoleAssignment object. |
|[Delete](../api/approleassignment_delete.md) | None |Delete appRoleAssignment object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appRoleAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->