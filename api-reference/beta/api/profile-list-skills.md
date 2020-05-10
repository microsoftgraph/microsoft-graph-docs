---
title: "List skills"
description: "Retrieve a list of skillProficiency objects."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# List skills

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [skillProficiency](../resources/skillproficiency.md) objects in a user's [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                |
|:---------------------------------------|:-----------------------------------------------------------|
| Delegated (work or school account)     | User.Read, User.ReadWrite                                  |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite                                  |
| Application                            | User.Read.All, User.ReadWrite.All      |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/profile/skills
GET /users/{id|userPrincipalName}/profile/skills
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Name            |Value    |Description                                                                                                                                                                 |
|:---------------|:--------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|$filter         |string   |Limits the response to only those objects which contain the specified criteria.                                                                                             |
|$orderby        |string   |By default, the objects in the response are sorted by their **createdDateTime** value in a query. You can change the order of the of the response using the `$orderby` parameter.|
|$select         |string   |Comma-separated list of properties to include in the response. For optimal performance, only select the subset of properties needed.                                        |
|$skip           |int      |Skip the first n results, useful for paging.                                                                                                                                |
|$top            |int      |Number of results to be returned.                                                                                                                                           |

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
| Authorization  | Bearer {token}. Required.   |
| Content-Type   | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [skillProficiency](../resources/skillproficiency.md) objects in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_skills"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/profile/skills
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-skills-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-skills-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-skills-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.skillProficiency",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

"skills@odata.context": "https://graph.microsoft.com/beta/$metadata#users('48d31887-5fad-4d73-a9f5-3c356e68a038')/profile/skills",
    "skills": [
        {
            "categories": [],
            "displayName": "Marketing Communications",
            "proficiency": "advancedWorking",
            "webUrl": null,
            "allowedAudiences": "organization",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "6ee6e598-3406-433b-9fe3-ce2e7f6cbf04",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        },
        {
            "categories": [],
            "displayName": "Sales Cycle Control and Reporting Systems",
            "proficiency": "advancedProfessional",
            "webUrl": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "9394ac8f-c715-4a7c-9c19-f7714fdb4de8",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        },
        {
            "categories": [],
            "displayName": "Audit Training",
            "proficiency": null,
            "webUrl": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "be12f963-79bc-42a3-a76f-9bb84b065e49",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        },
        {
            "categories": [],
            "displayName": "Total Quality Management",
            "proficiency": null,
            "webUrl": null,
            "allowedAudiences": "me",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "57ef6feb-1151-43a2-a752-c5663662717a",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        },
        {
            "categories": [],
            "displayName": "Quantitative Marketing Analysis",
            "proficiency": "limitedWorking",
            "webUrl": null,
            "allowedAudiences": "everyone",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "9c16f8e8-a96e-412d-a51f-d7fd8cf0f514",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ]
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List skills",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
