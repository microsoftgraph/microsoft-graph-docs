---
title: "accessPackageAssignmentRequest resource type"
description: "An access package assignment request is created by a user who wants to obtain an access package assignment."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# accessPackageAssignmentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), an access package assignment request is created by or on behalf of a user who wants to obtain an access package assignment. If the request is successful, with any necessary approvals, the user receives an access package assignment, and is the subject of that resulting access package assignment.  Azure AD also creates access package assignment requests automatically for tracking access removal.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageAssignmentRequests](../api/accesspackageassignmentrequest-list.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) collection | Retrieve a list of accesspackageassignmentrequest objects. |
| [Create accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-post.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Create a new accessPackageAssignmentRequest. |
| [Get accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-get.md) | [accessPackageAssignmentRequest](accesspackageassignmentrequest.md) | Read properties and relationships of an accessPackageAssignmentRequest object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|completedDate|DateTimeOffset|The date of the end of processing, either successful or failure, of a request. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|id|String| Read-only.|
|isValidationOnly|Boolean|True if the request is not to be processed for assignment.|
|justification|String|The requestor's supplied justification.|
|requestState|String|One of `PendingApproval`, `Canceled`,  `Denied`, `Delivering`, `Delivered`, `PartiallyDelivered`, `Submitted` or `Scheduled`. Read-only.|
|requestStatus|String|More information on the request processing status. Read-only.|
|requestType|String|One of `UserAdd`, `UserRemove`, `AdminAdd`, `AdminRemove` or `SystemRemove`. A request from the user themselves would have requestType of `UserAdd` or `UserRemove`. Read-only.|
|schedule|[requestSchedule](requestschedule.md)| The range of dates that access is to be assigned to the requestor. Read-only.|
|accessPackageAssignment|[accessPackageAssignment](accesspackageassignment.md)| For a requestType of `UserAdd` or `AdminAdd`, this is an access package assignment requested to be created.  For a requestType of `UserRemove`, `AdminRemove` or `SystemRemove`, this has the `id` property of an existing assignment to be removed.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|requestor|[accessPackageSubject](accesspackagesubject.md)| The subject who requested or, if a direct assignment, was assigned. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignmentRequest",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "createdDateTime": "2020-02-12T22:06:58.303Z",
  "completedDate": "2020-02-12T22:14:28.19Z",
  "id": "1244d439-5baa-4b9a-be5f-e8fdef5a998b",
  "requestType": "UserAdd",
  "requestState": "Delivered",
  "requestStatus": "FulfilledNotificationTriggered",
  "isValidationOnly": false,
  "justification": ""
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignmentRequest resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


