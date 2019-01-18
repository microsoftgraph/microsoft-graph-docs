---
title: "Update educationassignment"
description: "Update the assignment object. Only teachers in the class can do this. Note that you can't use a PATCH request to change the status of an assignment. Use the publish action to change the assignment status."
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
---

# Update educationassignment

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the assignment object. Only teachers in the class can do this. Note that you can't use a PATCH request to change the status of an assignment. Use the [publish](../api/educationassignment-publish.md) action to change the assignment status.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /education/classes/{id}/assignments/{id}
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowLateSubmissions|Boolean| Whether submissions can be submitted after the due date.|
|allowStudentsToAddResourcesToSubmission|Boolean| Whether a student can add resources to a submission. Indicated whether the only items on the submission came from the assignment resource list. |
|assignDateTime|DateTimeOffset| Date the assignment should be published to students. |
|assignTo|educationAssignmentRecipient| Students who get the assignment.|
|displayName|String| Name of assignment. |
|dueDateTime|DateTimeOffset| Date assignment is due. |
|grading|educationAssignmentGradeType| How the assignment will be graded.|
|instructions|itemBody| Instructions to be given to the students along with the assignment. |

## Response
If successful, this method returns a `200 OK` response code and an updated [educationAssignment](../resources/educationassignment.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_educationassignment"
}-->
```http
PATCH https://graph.microsoft.com/beta/education/classes/11021/assignments/19002
Content-type: application/json
Content-length: 279

{
  "displayName": "Week 1 reading assignment",
  "instructions": {
    "contentType": "Text",
    "content": "Read chapters 1 through 3"
  },
  "dueDateTime": "2014-02-01T00:00:00Z"
}
```
##### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 279

{
  "classId": "11021",
  "displayName": "Week 1 reading assignment",
  "instructions": {
    "contentType": "Text",
    "content": "Read chapters 1 through 3"
  },
  "dueDateTime": "2014-02-01T00:00:00Z",
  "assignDateTime": "2014-01-01T00:00:00Z",
  "assignedDateTime": "2014-01-01T00:00:00Z"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update educationassignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
