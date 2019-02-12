---
title: "privilegedAccess resource type"
description: " for example, `privilegedAccess/azureResources` represents PIM managing privileged access to Azure resources."
localization_priority: Normal
---

# privilegedAccess resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of functionalities provided by the Privileged Identity Management (PIM) service. Different instances of `privilegedAccess` represent different providers managed by PIM; for example, `privilegedAccess/azureResources` represents PIM managing privileged access to Azure resources.


`privilegedAccess` is read-only for now. No `POST`, `PUT`, `PATCH`, or `DELETE` operations are supported on the `privilegedAccess` entity set.

## Properties
| Property	| Type	    |Description|
|:----------|:----------|:----------|
|id         |String     |The id of the provider managed by PIM.|
|displayName|String     |The display name of the provider managed by PIM.|


## Relationships
| Relationship   | Type	                                        |Description|
|:---------------|:---------------------------------------------|:----------|
|resources       |[governanceResource](../resources/governanceresource.md) collection            |A collection of resources for the provider.|
|roleAssignments |[governanceRoleAssignment](../resources/governanceroleassignment.md) collection|A collection of role assignments for the provider.|
|roleDefinitions |[governanceRoleDefinition](../resources/governanceroledefinition.md) collection|A collection of role defintions for the provider.|
|roleAssignmentRequests |[governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) collection|A collection of role assignment requests for the provider.|
|roleSettings |[governanceRoleSetting](../resources/governancerolesetting.md) collection|A collection of role settings for the provider.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.privilegedAccess"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "privilegedAccess",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/privilegedaccess.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
