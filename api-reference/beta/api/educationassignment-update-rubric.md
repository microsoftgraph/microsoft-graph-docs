---
title: "Update educationRubric"
description: "Update an existing educationRubric attached to this educationAssignment"
localization_priority: Normal
author: "dipakboyed"
ms.prod: "education"
---

# Update educationRubric

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an existing [educationRubric](../resources/educationrubric.md) attached to this [educationAssignment](../resources/educationassignment.md).

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
PATCH /education/classes/{id}/assignments/{id}/rubric
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
|displayName|String|Name of rubric.|
|description|String|Description of rubric.|
|qualities|[foo](foo.md) collection|The qualities of this rubric.|
|levels|[foo](foo.md) collection|The levels of this rubric.|
|grading|[foo](foo.md)|The grading type of this rubric.|

## Response
If successful, this method returns a `200 OK` response code and updated [educationRubric](../resources/educationrubric.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "get_assignments"
}-->
```http 
PATCH https://graph.microsoft.com/beta/education/classes/1001/assignments/12002/rubric
Content-type: application/json
Content-length: 508

{
   "displayName":"My Rubric 2",
   "description":{
      "content":"My Rubric 2",
      "contentType":"text"
   }
}
```
##### Response
The following is an example of the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationAssignment",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 344

{
    "displayName": "My Rubric 2",
    "createdDateTime": "2019-05-15T23:22:04.5638953Z",
    "lastModifiedDateTime": "2019-05-15T23:22:04.5768878Z",
    "id": "7912179c-16a1-492d-b113-6c14822c0da0",
    "description": {
        "content": "My Rubric 2",
        "contentType": "text"
    },
    "qualities": [
        {
            "qualityId": "080059c5-b323-4a34-8451-806a2288fa65",
            "displayName": "Organization",
            "weight": 40,
            "criteria": [
                {
                    "id": "1c79c76d-45f7-4933-a299-7e84d5bfaaf0",
                    "description": {
                        "content": "Well-organized and easily understood",
                        "contentType": "text"
                    }
                },
                {
                    "id": "70290dbd-a950-4bd1-b1e5-cba8fa398c8e",
                    "description": {
                        "content": "Organization is evident",
                        "contentType": "text"
                    }
                },
                {
                    "id": "ae1bb48c-da9b-447d-a34b-5f2b6266babb",
                    "description": {
                        "content": "Topics are presented in no clear order",
                        "contentType": "text"
                    }
                }
            ]
        },
        {
            "qualityId": "701c69be-a793-437a-8c9b-7cb1b7d27b59",
            "displayName": "Argument",
            "weight": 60,
            "criteria": [
                {
                    "id": "609e0a3d-33c6-4e85-b808-be3aa58306bc",
                    "description": {
                        "content": "Argument is clear and persuasive",
                        "contentType": "text"
                    }
                },
                {
                    "id": "4b36b833-f509-466a-98dc-d50cab0f28cf",
                    "description": {
                        "content": "Argument hangs together",
                        "contentType": "text"
                    }
                },
                {
                    "id": "5bcd8e42-5472-4900-90f7-818e12d85c6c",
                    "description": {
                        "content": "Argument unclear or incoherent",
                        "contentType": "text"
                    }
                }
            ]
        }
    ],
    "levels": [
        {
            "levelId": "db44cc81-2866-463c-a2cf-85a55feef2ce",
            "displayName": "Excellent",
            "grading": {
                "@odata.type": "#microsoft.graph.educationRubricPointsGradeType",
                "maxPoints": 3
            }
        },
        {
            "levelId": "315c039c-6e66-4474-b500-cd5cb1de5d9d",
            "displayName": "Good",
            "grading": {
                "@odata.type": "#microsoft.graph.educationRubricPointsGradeType",
                "maxPoints": 2
            }
        },
        {
            "levelId": "e7fa1339-e70e-422c-bb0a-ded133389d5a",
            "displayName": "Poor",
            "grading": {
                "@odata.type": "#microsoft.graph.educationRubricPointsGradeType",
                "maxPoints": 1
            }
        }
    ],
    "grading": {
        "@odata.type": "#microsoft.graph.educationRubricPointsGradeType",
        "maxPoints": null
    },
    "createdBy": {
        "user": {
            "id": "9391878d-903c-406c-bb1c-0f17d00fd878",
        }
    },
    "lastModifiedBy": {
        "user": {
            "id": "9391878d-903c-406c-bb1c-0f17d00fd878",
        }
    }
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Attach educationRubric to educationAssignment",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
