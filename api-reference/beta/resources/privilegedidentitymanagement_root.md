# Azure AD Privileged Identity Management

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Here is the list of methods that are provided by [Privileged Identity Management](https://azure.microsoft.com/en-us/documentation/articles/active-directory-privileged-identity-management-configure/) service.

The service is built on top of OData. To filter the results from the query, use the standard OData ``$filter`` expressions in the URIs.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List privilegedOperationEvent](../api/privilegedoperationevent_list.md) | [privilegedOperationEvent](privilegedoperationevent.md) collection |Get privilegedOperationEvent object collection. |
|[Get privilegedRole](../api/privilegedrole_get.md) |[privilegedRole](privilegedrole.md)| Get a privilegedRole object.|
|[List privilegedRole](../api/privilegedrole_list.md) | [privilegedRole](privilegedrole.md) collection |Get privilegedRole object collection. |
|[List role assignments](../api/privilegedrole_list_assignments.md) | [privilegedRoleAssignment](privilegedroleassignment.md) collection |Get privilegedRoleAssignment collection for the particular role. Each privilegedRoleAssignment represents a role assignment to a user.|
|[selfActivate](../api/privilegedrole_selfactivate.md) | [privilegedRoleAssignment](privilegedroleassignment.md) |Activate the role that is assigned to the requestor.|
|[selfDeactivate](../api/privilegedrole_selfdeactivate.md) | [privilegedRoleAssignment](privilegedroleassignment.md) |Deactivate the role that is assigned to the requestor.|
|[Create privilegedRoleAssignment](../api/privilegedroleassignment_post_privilegedroleassignments.md) |[privilegedRoleAssignment](privilegedroleassignment.md)| Create a new privilegedRoleAssignment (role assignment) by posting to the privilegedRoleAssignments collection.|
|[List privilegedRoleAssignment](../api/privilegedroleassignment_list.md) | [privilegedRoleAssignment](privilegedroleassignment.md) collection |Get privilegedRoleAssignment object collection. The collection contains all role assignments for the organization. Each privilegedRoleAssignment represents a role assignment to a user. |
|[Get privilegedRoleAssignment](../api/privilegedroleassignment_get.md) | [privilegedRoleAssignment](privilegedroleassignment.md)|Get privilegedRoleAssignment object with the specified assignment id. |
|[Delete privilegedRoleAssignment](../api/privilegedroleassignment_delete.md) | None. |Delete privilegedRoleAssignment object. |
|[makePermanent](../api/privilegedroleassignment_makepermanent.md) | [privilegedRoleAssignment](privilegedroleassignment.md) |Make the role assignment as permanent. |
|[makeEligible](../api/privilegedroleassignment_makeeligible.md) | [privilegedRoleAssignment](privilegedroleassignment.md) |Make the role assignment as eligible. |
|[my](../api/privilegedroleassignment_my.md) | [privilegedRoleAssignment](privilegedroleassignment.md) collection|Get the requestor's role assignments. |
|[Get privilegedRoleSettings](../api/privilegedrolesettings_get.md) | [privilegedRoleSettings](../resources/privilegedrolesettings.md)|Retrieve the properties of privilegedRoleSettings object. |
|[Get privilegedRoleSummary](../api/privilegedrolesummary_get.md) | [privilegedRoleSummary](../resources/privilegedrolesummary.md)|Retrieve the privilegedRoleSummary object. |
|[Get privilegedApproval](../api/privilegedApproval_get.md) |[privilegedApproval](privilegedApproval.md)| Get a privilegedApproval object.|
|[List privilegedApproval](../api/privilegedapproval_list.md) | [privilegedApproval](privilegedapproval.md) collection |Get privilegedApproval object collection. |
|[Create privilegedApproval](../api/privilegedapproval_post_privilegedapproval.md) | [privilegedApproval](privilegedapproval.md)	|Create privilegedApproval object. |
|[Update privilegedApproval](../api/privilegedapproval_update.md) | [privilegedApproval](privilegedapproval.md)	|Update privilegedApproval object. |
|[myrequests](../api/privilegedapproval_myrequests.md) | [privilegedApproval](privilegedApproval.md) collection|Get the requestor's approval requests. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Service root",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
