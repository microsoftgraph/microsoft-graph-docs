---
title: "approval resource type"
description: "The approval object associated with an accessPackageAssignmentRequest or userConsentRequest."
localization_priority: Normal
author: "sbounouh"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# approval resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-root.md), the approval object for decisions associated with the `accessPackageAssignmentRequest`. A single step request can have one step associated with it which approvers can act on. Similarly, a multi-step request can have multiple steps associated with it which approvers can act on. However, in multi-step approvals both pending and previously completed steps are shown.

In [userConsentRequests](../resources/userconsentrequest.md), the approval object for decisions associated with a request.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[Get approval](../api/approval-get.md) | [approval](approval.md) | Retrieve the properties of an **approval** object. |


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the approval object.  In entitlement management, it is the same identifier as the identifier of the [access package assignment request](accesspackageassignmentrequest.md).|
|steps|[approvalStep](../resources/approvalstep.md) collection|Used to represent the decision associated with a single step in the approval process configured in [approvalStage](../resources/approvalstage.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|stages|[approvalStage](../resources/approvalstage.md) collection|Used for the **approvalStages** property of approval settings in the **requestApprovalSettings** property of an [access package assignment policy](accesspackageassignmentpolicy.md). Specifies the primary, fallback, and escalation approvers of each stage.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approval",
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.approval",
  "id": "String (identifier)",
  "steps": [{
        "@odata.type": "#microsoft.graph.approvalStep"
    }]
}
```
