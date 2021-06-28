---
title: "unifiedRoleEligibilityRequest resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# unifiedRoleEligibilityRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [request](../resources/request.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleEligibilityRequests](../api/unifiedroleeligibilityrequest-list.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) collection|Get a list of the [unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) objects and their properties.|
|[Create unifiedRoleEligibilityRequest](../api/unifiedroleeligibilityrequest-create.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md)|Create a new [unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) object.|
|[Get unifiedRoleEligibilityRequest](../api/unifiedroleeligibilityrequest-get.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md)|Read the properties and relationships of an [unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) object.|
|[Update unifiedRoleEligibilityRequest](../api/unifiedroleeligibilityrequest-update.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md)|Update the properties of an [unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) object.|
|[Delete unifiedRoleEligibilityRequest](../api/unifiedroleeligibilityrequest-delete.md)|None|Deletes an [unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) object.|
|[stop](../api/unifiedroleeligibilityrequest-stop.md)|None|**TODO: Add Description**|
|[recordDecisions](../api/unifiedroleeligibilityrequest-recorddecisions.md)|None|**TODO: Add Description**|
|[filterByCurrentUser](../api/unifiedroleeligibilityrequest-filterbycurrentuser.md)|[unifiedRoleEligibilityRequest](../resources/unifiedroleeligibilityrequest.md) collection|**TODO: Add Description**|
|[cancel](../api/unifiedroleeligibilityrequest-cancel.md)|None|**TODO: Add Description**|
|[List appScope](../api/unifiedroleeligibilityrequest-list-appscope.md)|[appScope](../resources/appscope.md) collection|Get the appScope resources from the appScope navigation property.|
|[Add appScope](../api/unifiedroleeligibilityrequest-post-appscope.md)|[appScope](../resources/appscope.md)|Add appScope by posting to the appScope collection.|
|[List directoryScope](../api/unifiedroleeligibilityrequest-list-directoryscope.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the directoryScope navigation property.|
|[Add directoryScope](../api/unifiedroleeligibilityrequest-post-directoryscope.md)|[directoryObject](../resources/directoryobject.md)|Add directoryScope by posting to the directoryScope collection.|
|[List principal](../api/unifiedroleeligibilityrequest-list-principal.md)|[directoryObject](../resources/directoryobject.md) collection|Get the directoryObject resources from the principal navigation property.|
|[Add principal](../api/unifiedroleeligibilityrequest-post-principal.md)|[directoryObject](../resources/directoryobject.md)|Add principal by posting to the principal collection.|
|[List unifiedRoleDefinition](../api/unifiedroleeligibilityrequest-list-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md) collection|Get the unifiedRoleDefinition resources from the roleDefinition navigation property.|
|[Add unifiedRoleDefinition](../api/unifiedroleeligibilityrequest-post-roledefinition.md)|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|Add roleDefinition by posting to the roleDefinition collection.|
|[List unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityrequest-list-targetschedule.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md) collection|Get the unifiedRoleEligibilitySchedule resources from the targetSchedule navigation property.|
|[Add unifiedRoleEligibilitySchedule](../api/unifiedroleeligibilityrequest-post-targetschedule.md)|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|Add targetSchedule by posting to the targetSchedule collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|**TODO: Add Description**|
|approvalId|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|appScopeId|String|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|customData|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|directoryScopeId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isValidationOnly|Boolean|**TODO: Add Description**|
|justification|String|**TODO: Add Description**|
|principalId|String|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|
|scheduleInfo|[requestSchedule](../resources/requestschedule.md)|**TODO: Add Description**|
|status|String|**TODO: Add Description** Inherited from [request](../resources/request.md).|
|targetScheduleId|String|**TODO: Add Description**|
|ticketInfo|[ticketInfo](../resources/ticketinfo.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appScope|[appScope](../resources/appscope.md)|**TODO: Add Description**|
|directoryScope|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|principal|[directoryObject](../resources/directoryobject.md)|**TODO: Add Description**|
|roleDefinition|[unifiedRoleDefinition](../resources/unifiedroledefinition.md)|**TODO: Add Description**|
|targetSchedule|[unifiedRoleEligibilitySchedule](../resources/unifiedroleeligibilityschedule.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleEligibilityRequest",
  "baseType": "microsoft.graph.request",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleEligibilityRequest",
  "id": "String (identifier)",
  "status": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "approvalId": "String",
  "customData": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "action": "String",
  "principalId": "String",
  "roleDefinitionId": "String",
  "directoryScopeId": "String",
  "appScopeId": "String",
  "isValidationOnly": "Boolean",
  "targetScheduleId": "String",
  "justification": "String",
  "scheduleInfo": {
    "@odata.type": "microsoft.graph.requestSchedule"
  },
  "ticketInfo": {
    "@odata.type": "microsoft.graph.ticketInfo"
  }
}
```

