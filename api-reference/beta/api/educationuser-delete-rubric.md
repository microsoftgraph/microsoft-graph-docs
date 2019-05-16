---
title: "Delete rubric"
description: "Deletes a rubric owned by the user, who must be a teacher."
localization_priority: Normal
author: "mmast-msft"
ms.prod: "education"
---

# List assignments

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a rubric owned by the user, who must be a teacher.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | EduAssignments.ReadBasic, EduAssignments.ReadWriteBasic, EduAssignments.Read, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) | Not supported.   |
|Application | Not supported. | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /education/me/rubric/{id}
```
## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "get_assignments"
}-->
```http 
DELETE https://graph.microsoft.com/beta/education/me/rubrics/21002
```
##### Response
The following is an example of the response. 

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List assignments",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
