---
title: "approvalStep resource type"
description: "The approvalStep object associated with an accessPackageAssignmentRequest or userConsentRequest."
localization_priority: Normal
author: "sbounouh"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# approvalStep resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-root.md), the approvalStep object for decisions associated with the `accessPackageAssignmentRequest`. It is used to distinguish decisions for different steps of an approval workflow that approvers can act on.

In [userConsentRequests](../resources/userconsentrequest.md), the approval  decisions associated with a request.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
|[List approvalSteps](../api/approval-list-steps.md) | [approvalStep](approvalstep.md) collection | List the **approvalStep** objects associated with an **approval** object. |
|[Get approvalStep](../api/approvalstep-get.md) | [approvalStep](approvalstep.md) | Retrieve the properties of an **approvalStep** object. |
|[Update approvalStep](../api/approvalstep-update.md) | None | Apply approve or deny decision on an **approvalStep** object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|Indicates whether the step is assigned to the calling user to review. Read-only.|
|displayName|String|The label provided by the policy creator to identify an approval step. Read-only.|
|id|String|The identifier of the step associated with an approval object. Read-only.|
|justification|String|The justification associated with the approval step decision.|
|reviewResult|String|The result of this approval record. Possible values include: `NotReviewed`, `Approved`, `Denied`.|
|reviewedBy|[userIdentity](useridentity.md) collection | The identifier of the reviewer. Read-only.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|status|String|The step status. Possible values: `InProgress`, `Initializing`, `Completed`, `Expired`. Read-only.|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|approval|[approval](../resources/approval.md) collection|The approval object for decisions associated with the `accessPackageAssignmentRequest`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStep",
}
-->
``` json
{
   "@odata.type":"#microsoft.graph.approvalStep",
   "id":"String (identifier)",
   "displayName":"String",
   "status":"String",
   "assignedToMe":true,
   "reviewedBy": [{"@odata.type": "microsoft.graph.userIdentity"}],
   "reviewedDateTime":"String (timestamp)",
   "reviewResult":"String",
   "justification":"String"
}
```
