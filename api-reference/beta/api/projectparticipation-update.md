---
title: "Update projectParticipation resource type"
description: "Update the properties of a projectParticipation object in a user's profile."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update projectparticipation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [projectParticipation](../resources/projectParticipation.md) object in a user's [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All          |
| Delegated (personal Microsoft account) | User.ReadWrite, User.ReadWrite.All          |
| Application                            | User.ReadWrite.All                          |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /me/profile/projects/{id}
PATCH /users/{id|userPrincipalName}/profile/projects/{id}
```

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
| Authorization  | Bearer {token}. Required.   |
| Content-Type   | application/json. Required. |


## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type                                                     | Description                                                                                        |
|:-------------|:---------------------------------------------------------|:---------------------------------------------------------------------------------------------------|
|categories    |String collection                                         | Contains categories a user has associated with the project (eg: digital transformation, oil rig)   |
|client        |[companyDetail](../resources/companydetail.md)            | Contains detailed information about the client the project was for.                                |
|colleagues    |[relatedPerson](../resources/relatedperson.md) collection | People that also worked on the project.                                                            |
|detail        |[positionDetail](../resources/positiondetail.md)          | Contains detail about the users role on the project.                                               |
|displayName   |String                                                    | Contains a friendly name for the project.                                                          |
|sponsors      |[relatedPerson](../resources/relatedperson.md) collection | Person(People) who sponsored the project.                                                          |

## Response

If successful, this method returns a `200 OK` response code and an updated [projectParticipation](../resources/projectparticipation.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_projectparticipation"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/profile/projects/{id}
Content-type: application/json

{
  "categories": [
    "machine learning"
  ],
  "client": {
    "displayName": "Contoso Intelligence Team",
    "department": "Contoso Int."
  },
  "displayName": "Customer Analytics",
  "description": "Understanding our customers better",
  "endMonthYear": "2020-04-21",
  "jobTitle": "ML Specialist",
  "role": "project member",
  "startMonthYear": "2019-03-23",
  "summary": "Worked as an ML specialist on a project for Contoso to better analyse their customers behaviors on the website."
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-projectparticipation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-projectparticipation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-projectparticipation-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.projectParticipation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "categories": [
    "machine learning"
  ],
  "client": {
    "displayName": "Contoso Intelligence Team",
    "pronunciation": null,
    "department": "Contoso Int.",
    "officeLocation": null,
    "address": [],
    "webUrl": null
  },
  "displayName": "Customer Analytics",
  "detail": {
    "company": [],
    "displayName": "Customer Analytics",
    "description": "Understanding our customers better",
    "endMonthYear": "2020-04-21",
    "jobTitle": "ML Specialist",
    "role": "project member",
    "startMonthYear": "2019-03-23",
    "summary": "Worked as an ML specialist on a project for Contoso to better analyse their customers behaviors on the website."
  },
  "colleagues": [],
  "sponsors": []
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update projectparticipation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
