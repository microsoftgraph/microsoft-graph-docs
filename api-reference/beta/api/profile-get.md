---
title: "Get profile"
description: "Retrieve the properties and relationships of profile object."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Get profile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [profile](../resources/profile.md) object for a given user.

The **profile** resource exposes various rich properties that are descriptive of the user as [relationships](../resources/profile.md#relationships), for example, anniversaries and education activities. To get one of these navigation properties, use the corresponding GET method on that property. See the [methods](../resources/profile.md) exposed by **profile**.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                      |
|:---------------------------------------|:---------------------------------------------------------------------------------|
<<<<<<< HEAD
| Delegated (work or school account)     | User.Read, User.ReadWrite |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite |
| Application                            | User.Read.All, User.ReadWrite.All                            |
=======
| Delegated (work or school account)     | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Application                            | User.ReadBasic.All, User.Read.All, User.ReadWrite.All                            |
>>>>>>> 7b7c7db48621b45f30c875e5e31daa28a9c5452c

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/profile
GET /users/{id|userPrincipalName}/profile
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
| Authorization  | Bearer {token}. Required.   |
| Content-Type   | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [profile](../resources/profile.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_profile"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/profile
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-profile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-profile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-profile-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.profile"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "profileId",
    "anniversaries": [],
    "websites": [],
    "educationalActivities": [
        {
            "endMonthYear": null,
            "startMonthYear": null,
            "completionMonthYear": null,
            "allowedAudiences": "organization",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "5e20f415-8e03-43f6-a3db-0f13aef0b9ed",
            "program": {
                "abbreviation": null,
                "description": null,
                "displayName": "",
                "grade": null,
                "notes": null,
                "webUrl": null
            },
            "institution": {
                "description": null,
                "displayName": "Dartmouth",
                "location": null,
                "webUrl": null
            },
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
            "endMonthYear": null,
            "startMonthYear": null,
            "completionMonthYear": null,
            "allowedAudiences": "organization",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "976f24aa-061a-445f-b31b-5891baf50d37",
            "program": {
                "abbreviation": null,
                "description": null,
                "displayName": "",
                "grade": null,
                "notes": null,
                "webUrl": null
            },
            "institution": {
                "description": null,
                "displayName": "Wharton School",
                "location": null,
                "webUrl": null
            },
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "emails": [
        {
            "address": "IrenaK@M365x214355.onmicrosoft.com",
            "displayName": null,
            "type": "main",
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "cd404929-f35f-4a24-8a02-b625755dcdb2",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "interests": [
        {
            "categories": [],
            "description": null,
            "displayName": "Antiques",
            "webUrl": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "61f64b68-198d-4f21-88f9-d73fe674ad7c",
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
            "description": null,
            "displayName": "Hiking",
            "webUrl": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "c2a775bb-b40f-4972-afc9-2be4c6ec4789",
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
            "description": null,
            "displayName": "Bicycling",
            "webUrl": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "78aa3baf-3434-4250-b734-b1ce0bb01f64",
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
            "description": null,
            "displayName": "American History",
            "webUrl": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "1b1d8d3f-687c-4e52-8ba2-ac1fe730ce59",
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
            "description": null,
            "displayName": "Archaeology",
            "webUrl": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "362e23aa-ecbb-47e1-a04b-b128edc78b69",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "languages": [
        {
            "displayName": "English (United States)",
            "tag": "en-US",
            "proficiency": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "7a521b6f-3ab8-4b94-9099-7f8eb4447f8e",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "names": [
        {
            "displayName": "Irena Koren",
            "first": "Irena",
            "initials": "",
            "last": "Koren",
            "languageTag": null,
            "maiden": null,
            "middle": null,
            "nickname": null,
            "suffix": null,
            "title": null,
            "pronunciation": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "7d31dbdd-fe6b-4e2d-8e74-60ddc5eaf0c1",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "phones": [
        {
            "displayName": null,
            "type": "business",
            "number": "+1 412 555 0109",
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "a545e073-999d-4813-9cc5-b6f45a6560f8",
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "positions": [
        {
            "categories": [],
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "1b9e024d-0df8-4b57-af2b-dae70db4f356",
            "detail": {
                "description": null,
                "endMonthYear": "0001-01-01",
                "jobTitle": "Auditor",
                "startMonthYear": "0001-01-01",
                "summary": null,
                "company": {
                    "displayName": "",
                    "pronunciation": null,
                    "department": "Finance",
                    "officeLocation": "12/1110",
                    "webUrl": null,
                    "address": {
                        "type": "business",
                        "postOfficeBox": null,
                        "street": "30 Isabella St., Second Floor",
                        "city": "Pittsburgh",
                        "state": "PA",
                        "countryOrRegion": "US",
                        "postalCode": "15212"
                    }
                }
            },
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "AAD",
                    "id": null
                }
            }
        }
    ],
    "projects": [
        {
            "categories": [],
            "client": null,
            "displayName": "Chief Author, Marketing Review",
            "detail": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "3f562cc9-6462-4971-b570-e5209b1cfbf3",
            "colleagues": [],
            "sponsors": [],
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
            "client": null,
            "displayName": "Annual Review Sales and Marketing Committee",
            "detail": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "f41a3287-730f-492a-9e6c-fb3aa9fe80e9",
            "colleagues": [],
            "sponsors": [],
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
            "client": null,
            "displayName": "Corporate Marketing Guidelines Review",
            "detail": null,
            "allowedAudiences": "contacts",
            "createdDateTime": "2020-02-18T16:07:14Z",
            "inference": null,
            "lastModifiedDateTime": "2020-02-18T16:07:14Z",
            "id": "f7cb9d97-149a-4113-a67c-5ea8b08b7ec4",
            "colleagues": [],
            "sponsors": [],
            "createdBy": {
                "device": null,
                "user": null,
                "application": {
                    "displayName": "UPA",
                    "id": null
                }
            }
        }
    ],
    "skills": [
        {
            "categories": [],
            "displayName": "Marketing Communications",
            "proficiency": null,
            "webUrl": null,
            "allowedAudiences": "contacts",
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
            "proficiency": null,
            "webUrl": null,
            "allowedAudiences": "contacts",
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
            "allowedAudiences": "contacts",
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
            "allowedAudiences": "contacts",
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
            "proficiency": null,
            "webUrl": null,
            "allowedAudiences": "contacts",
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
    ],
    "webAccounts": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get profile",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
