---
title: "governanceResource resource type"
description: "Represents resources that could be managed by Privileged Identity Management (PIM). For Azure resources, it can be a subscription, a resource group, and a resource such as a virtual machine, a SQL database, etc."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "governance"
author: "shauliu"
---

# governanceResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents resources that could be managed by Privileged Identity Management (PIM). For Azure resources, it can be a subscription, a resource group, and a resource such as a virtual machine, a SQL database, etc.


## Methods

| Method		  | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/governanceresource-list.md) | [governanceResource](../resources/governanceresource.md) collection|List a collection of resources the requestor has access to.|
|[Get](../api/governanceresource-get.md) | [governanceResource](../resources/governanceresource.md) |Read properties and relationships of a resource entity specified by id.|
|[Register](../api/governanceresource-register.md) | |Register an unmanaged Azure subscription or management group to PIM service. |

No `POST`, `PUT`, `PATCH`, `DELETE` are supported on `roleDefinitions` entity set for now.

## Properties
| Property	        |Type	      |Description|
|:------------------|:----------|:----------|
|id                 |String     |The id of the resource. It is in GUID format.|
|externalId           |String   |The external id of the resource, representing its original id in the external system. For example, a subscription resource's external id can be "/subscriptions/c14ae696-5e0c-4e5d-88cc-bef6637737ac". |
|type               |String     |Required. Resource type. For example, for Azure resources, the type could be "Subscription", "ResourceGroup", "Microsoft.Sql/server", etc.|
|displayName        |String     |The display name of the resource.|
|status             |String     |The status of a given resource. For example, it could represent whether the resource is locked or not (values: `Active`/`Locked`). Note: This property may be extended in the future to support more scenarios.|
|registeredDateTime|DateTimeOffset      |Represents the date time when the resource is registered in PIM.|
|registeredRoot|String      |The externalId of the resource's root scope that is registered in PIM. The root scope can be the parent, grandparent, or higher ancestor resources.|
|roleAssignmentCount|Int32      |Optional. The number of role assignments for the given resource. To get the property, please explictly use `$select=roleAssignmentCount` in the query.|
|roleDefinitionCount|Int32      |Optional. The number of role definitions for the given resource. To get the property, please explictly use `$select=roleDefinitionCount` in the query.|
|permissions|[governancePermission](../resources/governancepermission.md)      |Optional. It represents the status of the requestor's access to the resource.To get the property, please explictly use `$select=permissions` in the query.|

## Relationships
| Relationship   | Type	                                        |Description|
|:---------------|:---------------------------------------------|:----------|
|roleAssignments |[governanceRoleAssignment](../resources/governanceroleassignment.md) collection|The collection of role assignments for the resource.|
|roleDefinitions |[governanceRoleDefinition](../resources/governanceroledefinition.md) collection|The collection of role defintions for the resource.|
|roleAssignmentRequests |[governanceRoleAssignmentRequest](../resources/governanceroleassignmentrequest.md) collection|The collection of role assignment requests for the resource.|
|roleSettings |[governanceRoleSetting](../resources/governancerolesetting.md) collection|The collection of role settings for the resource.|
|parent          |[governanceResource](../resources/governanceresource.md)           |Read-only. The parent resource. for `pimforazurerbac` scenario, it can represent the subscription the resource belongs to.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceResource"
}-->
```json
{
  "id": "String (identifier)",
  "externalId": "String",
  "type": "String",
  "displayName": "String",
  "status": "String",
  "registeredDateTime": "String (timestamp)",
  "registeredRoot": "String",
  "roleAssignmentCount": 12356,
  "roleDefinitionCount": 12356,
  "permissions": {
    "@odata.type": "microsoft.graph.governancePermission"
  }
}

```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "governanceResource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


