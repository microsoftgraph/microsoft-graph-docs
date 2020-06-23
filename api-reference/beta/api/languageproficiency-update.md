---
title: "Update languageProficiency"
description: "Update the properties of a languageProficiency object in a user's profile."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update languageProficiency

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [languageProficiency](../resources/languageproficiency.md) object in a user's [profile](../resources/profile.md).

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
PATCH /me/profile/languages/{id}
```

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
| Authorization  | Bearer {token}. Required.   |
| Content-Type   | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property             | Type                                        | Description                                                                                                                                                                                    |
|:---------------------|:--------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|displayName           |String                                       | Contains the long-form name for the language.                                                                                                                                                  |
|reading               |string                                       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.                                   |
|spoken                |string                                       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.                                   |
|tag                   |String                                       | Contains the four-character BCP47 name for the language (en-US, no-NB, en-AU).                                                                                                                 |
|written               |string                                       | Possible values are: `elementary`, `conversational`, `limitedWorking`, `professionalWorking`, `fullProfessional`, `nativeOrBilingual`, `unknownFutureValue`.                                   |
|allowedAudiences      |string                                       | Possible values are: `me`, `family`, `contacts`, `groupMembers`, `organization`, `federatedOrganizations`, `everyone`, `unknownFutureValue`.                                                   |
|createdBy             |[identitySet](../resources/identityset.md)                | When the entity was originally created.                                                                                                                                                        |
|createdDateTime       |DateTimeOffset                               |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id                    |String                                       | Read-only.                                                                                                                                                                                     |
|inference             |[inferenceData](../resources/inferencedata.md)            | Contains inference detail if the entity is inferred.                                                                                                                                           |
|lastModifiedBy        |[identitySet](../resources/identityset.md)                | Identifier of the partner or user who last modified the entity.                                                                                                                                |
|lastModifiedDateTime  |DateTimeOffset                               |The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## Response

If successful, this method returns a `200 OK` response code and an updated [languageProficiency](../resources/languageproficiency.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_languageproficiency"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/profile/languages/{id}
Content-type: application/json

{
  "spoken": "advancedProfessional"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-languageproficiency-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-languageproficiency-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-languageproficiency-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.languageProficiency"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "allowedAudiences": "contacts",
    "createdBy": {
        "device": null,
        "user": null,
        "application": {
            "displayName": "AAD",
            "id": null
        }
    },
    "createdDateTime": "2020-02-18T16:07:14Z",
    "displayName": "English (United States)",
    "id": "7a521b6f-3ab8-4b94-9099-7f8eb4447f8e",
    "inference": null,
    "lastModifiedDateTime": "2020-02-18T16:07:14Z",
    "lastModifiedBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "UPA",
        "id": null
    }
  },
    "reading": "advancedProfessional",
    "source": "LinkedIn",
    "spoken": "advancedProfessional",
    "tag": "en-US",
    "written": "advancedProfessional",
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update languageproficiency",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
