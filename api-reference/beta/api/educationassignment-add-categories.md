---
title: "Add educationCategories"
description: "Add an existing educationCategory to this educationAssignment"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
doc_type: "apiPageType"
---

# Add educationCategories

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add one or more existing [educationCategory](../resources/educationcategory.md) objects to this [educationAssignment](../resources/educationassignment.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) |  EduAssignments.ReadWriteBasic, EduAssignments.ReadWrite  |
|Delegated (personal Microsoft account) |  Not supported.  |
|Application | Not supported.  | 

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /education/classes/{id}/assignments/{id}/categories/$ref
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, supply the odata.id of the existing [educationCategory](../resources/educationcategory.md) object(s) to add to this assignment.


## Response
If successful, this method returns a `204 No Content` response code.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "add_educationcategory_to_educationassignment"
}-->
```http
POST https://graph.microsoft.com/beta/education/classes/11021/assignments/19002/categories/$ref
Content-type: application/json
Content-length: 212

{
  "@odata.id": "https://graph.microsoft.com/v1.0/education/classes/11021/assignmentCategories/ec98f158-341d-4fea-9f8c-14a250d489ac"
}

```
In the request body, supply the odata.id of the existing [educationCategory](../resources/educationcategory.md) object to add to this assignment.
##### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All of the properties will be returned from an actual call.


<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignmentResource"
} -->
```http
HTTP/1.1 204 No Content
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Add educationCategory to educationAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


