---
title: "approvalStage resource type"
description: "The approvalStage object associated with a userConsentRequest."
author: "psignoret"
localization_priority: Normal
ms.prod: "governance"
doc_type: resourcePageType
---

# approvalStage resource type

Namespace: microsoft.graph

Specifies decision stages in the approval.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignedToMe|Boolean|Indicates whether the stage is assigned to the calling user to review. Read-only.|
|displayName|String|The label provided by the policy creator to identify an approval stage. Read-only.|
|id|String|The identifier of the stage associated with an approval object. Read-only.|
|justification|String|The justification associated with the approval stage decision.|
|reviewResult|String|The result of this approval record. Possible values include: `NotReviewed`, `Approved`, `Denied`.|
|reviewedBy|[userIdentity](useridentity.md) | The identifier of the reviewer. Read-only.|
|reviewedDateTime|DateTimeOffset|The date and time when a decision was recorded. The date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|status|String|The stage status. Possible values: `InProgress`, `Initializing`, `Completed`, `Expired`. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.approvalStage",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.approvalStage",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "assignedToMe": "Boolean",
  "reviewedBy": {
    "@odata.type": "microsoft.graph.identity"
  },
  "reviewedDateTime": "String (timestamp)",
  "reviewResult": "String",
  "justification": "String"
}
```
