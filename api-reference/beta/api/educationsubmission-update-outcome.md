---
title: "Update outcome"
description: "Update an outcome associated with this submission."
author: "dipakboyed"
localization_priority: Normal
ms.prod: "education"
---

# Update outcomes

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [educationOutcomes](../resources/educationoutcome.md) associated with this submission.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /educationClasses/assignments/{id}/submissions/{id}/outcomes/{id}
```
## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

## Response
If successful, this method returns a `200 OK` response code and updated [educationOutcome](../resources/educationoutcome.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "get_assignments"
}-->
```http 
PATCH https://graph.microsoft.com/beta/education/classes/1001/assignments/12002/submissions/19003/outcomes/14006
Content-type: application/json
Content-length: 508

{
   "points":97
}
```
##### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSubmissionResource",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1045

{
    "@odata.type": "#microsoft.graph.educationPointsOutcome",
    "id": "ea1351f6-ba33-4940-b2cb-6a7254af2dc8",
    "points": 97,
    "publishedPoints": 89
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List resources",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
