---
title: "Create educationalActivity"
description: "Create a new educationalActivity."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Create educationalActivity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [educationalActivity](../resources/educationalactivity.md) in a user's [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.ReadWrite, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.ReadWrite, User.ReadWrite.All |
| Application                            | User.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/profile/educationalActivities
POST /users/{id|userPrincipalName}/profile/educationalActivities
```

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type   | application/json. Required. |

## Request body

In the request body, supply a JSON representation of an [educationalActivity](../resources/educationalactivity.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [educationalActivity](../resources/educationalactivity.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_educationalactivity_from_profile"
}-->

```http
POST /me/profile/educationalActivities
Content-type: application/json

{
      "completionMonthYear": "20-05-2012",
      "endMonthYear": "20-05-2012",
      "institution": {
        "description": "Leading educational institute for consulting and IT training",
        "displayName": "Microsoft University",
        "location": {
          "type": "Business",
          "postOfficeBox": null,
          "street": "1 Microsoft Way",
          "city": "Redmond",
          "state": "WA",
          "countryOrRegion": "United States",
          "postalCode": "98052"
        },
        "webUrl": "www.microsoftuniversity.com"
      },
      "program": {
        "abbreviation": "MBA",
        "activities": "Varsity Soccer",
        "awards": null,
        "description": "Strategy and Implementation focus.",
        "displayName": "Master of IT Consulting",
        "fieldsOfStudy": "Strategy, Consulting",
        "grade": "3.9",
        "notes": null,
        "webUrl": "www.microsoftuniversity.com/master-of-it-consulting"
      },
      "startMonthYear": "01-08-2010"
    }
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-educationalactivity-from-profile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-educationalactivity-from-profile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-educationalactivity-from-profile-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationalActivity"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "completionMonthYear": "20-05-2012",
  "endMonthYear": "20-05-2012",
  "institution": {
    "description": "Leading educational institute for consulting and IT training",
    "displayName": "Microsoft University",
    "location": {
      "type": "Business",
      "postOfficeBox": null,
      "street": "1 Microsoft Way",
      "city": "Redmond",
      "state": "WA",
      "countryOrRegion": "United States",
      "postalCode": "98052"
    },
    "webUrl": "www.microsoftuniversity.com"
  },
  "program": {
    "abbreviation": "MBA",
    "activities": "Varsity Soccer",
    "awards": null,
    "description": "Strategy and Implementation focus.",
    "displayName": "Master of IT Consulting",
    "fieldsOfStudy": "Strategy, Consulting",
    "grade": "3.9",
    "notes": null,
    "webUrl": "www.microsoftuniversity.com/master-of-it-consulting"
  },
  "startMonthYear": "01-08-2010"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create educationalActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
