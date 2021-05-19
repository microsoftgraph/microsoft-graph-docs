---
title: "accessPackageAssignment resource type"
description: "An access package assignment is an assignment of an access package to a particular subject, for a period of time."
localization_priority: Normal
author: "markwahl-msft"
ms.prod: "governance"
doc_type: "resourcePageType"
---

# accessPackageAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD Entitlement Management](entitlementmanagement-root.md), an access package assignment is an assignment of an access package to a particular subject, for a period of time.  For example, an access package assignment can state that user Alice has been assigned access via the access package Sales for the period January 2019 through July 2019.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List accessPackageAssignments](../api/accesspackageassignment-list.md) | [accessPackageAssignment](accesspackageassignment.md) collection | Retrieve a list of **accessPackageAssignment** objects. |
|[filterByCurrentUser](../api/accesspackageassignment-filterbycurrentuser.md)|[accessPackageAssignment](../resources/accesspackageassignment.md) collection|Retrieve the list of **accessPackageAssignment** objects filtered on the signed-in user.|

>**Note:** You can't use a method to create or remove an access package assignment. Instead, a client that wants to request an access package assignment for a user, or remove an access package assignment from a user, can [create an accessPackageAssignmentRequest](../api/accesspackageassignmentrequest-post.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|accessPackageId|String|The identifier of the access package. Read-only.|
|assignmentPolicyId|String|The identifier of the access package assignment policy. Read-only.|
|assignmentState|String|The state of the access package assignment. Possible values are `Delivering`, `Delivered`, or `Expired`. Read-only.|
|assignmentStatus|String|More information about the assignment lifecycle.  Possible values include `Delivering`, `Delivered`, `NearExpiry1DayNotificationTriggered`, or `ExpiredNotificationTriggered`.  Read-only.|
|catalogId|String|The identifier of the catalog containing the access package. Read-only.|
|expiredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|id|String| Read-only.|
|isExtended|Boolean|Indicates whether the access package assignment is extended. Read-only.|
|targetId|String| The ID of the subject with the assignment. Read-only.|
|schedule|[requestSchedule](requestschedule.md)| When the access assignment is to be in place. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|accessPackage|[accessPackage](accesspackage.md)| Read-only. Nullable.|
|accessPackageAssignmentPolicy|[accessPackageAssignmentPolicy](accesspackageassignmentpolicy.md)| Read-only. Nullable.|
|accessPackageAssignmentResourceRoles|[accessPackageAssignmentResourceRole](accesspackageassignmentresourcerole.md) collection| The resource roles delivered to the target user for this assignment. Read-only. Nullable.|
|target|[accessPackageSubject](accesspackagesubject.md)| The subject of the access package assignment. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.accessPackageAssignment",
  "keyProperty": "id"
}-->

```json
{
   "id":"9bdae7b4-6ece-487b-9eb8-9679dbd67aa2",
   "catalogId":"cc30dc98-6d3c-4fa0-bed8-fd76d0efd993",
   "accessPackageId":"e3f47362-993f-4fcb-8a38-532ffca16150",
   "assignmentPolicyId":"63ebd106-8116-40e7-a0ab-01ae475d11bb",
   "targetId":"ab4291f6-66b7-42bf-b597-a05b29414f5c",
   "assignmentStatus":"ExpiredNotificationTriggered",
   "assignmentState":"Expired",
   "isExtended":false,
   "expiredDateTime":"2019-04-25T23:45:40.42Z"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "accessPackageAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


