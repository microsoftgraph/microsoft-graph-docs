---
title: "Update userAccountInformation"
description: "Update the properties of userAccountInformation object."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# Update useraccountinformation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [userAccountInformation](../resources/useraccountinformation.md) object in a user's [profile](../resources/profile.md).

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
PATCH /me/profile/accounts/{id}
PATCH /users/{id|userPrincipalName}/profile/accounts/{id}
```

## Request headers

| Name           |Description                 |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json. Required |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property            | Type                                    | Description                                                                                    |
|:--------------------|:----------------------------------------|:-----------------------------------------------------------------------------------------------|
|ageGroup             |String                                   |Shows the age group of user. Allowed values `null`, `minor`, `notAdult` and `adult`. Read Only. |
|countryCode          |String                                   |Contains the two-character countryCode associated with the users account.                       |
|preferredLanguageTag |[localeInfo](../resources/localeinfo.md) |Contains the language the user has associated as preferred for the account.                     |
|userPrincipalName    |String                                   |The user principal name (UPN) of the user associated with the account.                          |

## Response

If successful, this method returns a `200 OK` response code and an updated [userAccountInformation](../resources/useraccountinformation.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_useraccountinformation"
}-->

```http
PATCH https://graph.microsoft.com/beta/me/profile/account/{id}
Content-type: application/json

{
  "preferredLanguageTag": {
    "locale": "en-AU",
    "displayName": "English (Australian)"
  },
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-useraccountinformation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-useraccountinformation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/update-useraccountinformation-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userAccountInformation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "allowedAudiences": "organization",
  "ageGroup": "3",
  "countryCode": "NO",
  "createdBy": {
    "device": null,
    "user": null,
    "application": {
        "displayName": "AAD",
        "id": null
    }
  },
  "createdDateTime": "2020-02-18T16:07:14Z",
  "id": "61f64b68-198d-4f21-88f9-d73fe674ad7c",
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
  "preferredLanguageTag": {
        "locale": "en-AU",
        "displayName": "English (Australian)"
      },
  "source": null,
  "userPrincipalName": "ikoren@contoso.com"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update useraccountinformation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
