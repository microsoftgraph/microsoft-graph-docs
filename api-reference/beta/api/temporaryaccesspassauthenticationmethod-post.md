---
title: "Create temporaryAccessPassAuthenticationMethod"
description: "Create a new temporaryAccessPassAuthenticationMethod object."
author: "inbarckMS"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create temporaryAccessPassAuthenticationMethod
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) object on a user. A user can only have one Temporary Access Pass. The passcode can be used between the start and end time of the Temporary Access Pass. If the user requires a new Temporary Access Pass:
* While the current Temporary Access Pass is valid – the admin needs to delete the existing Temporary Access Pass and create a new pass on the user. Deleting a valid Temporary Access Pass will revoke the user’s sessions. 
* After the Temporary Access Pass has expired – a new temporary access pass overrides the current temporary access pass and doesn't revoke the user’s sessions.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions acting on self

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

### Permissions acting on other users

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.ReadWrite.All |

For delegated scenarios where an admin is acting on another user, the admin needs [one of the following roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):
* Global admin
* Privileged authentication admin
* Authentication admin

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{id | userPrincipalName}/authentication/temporaryAccessPassMethods
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) object.

The following table describes optional properties that can be used when creating the [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md).

|Property|Type|Description|Required| 
|:---|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the temporaryAccessPass becomes available to use, if not set the Temporary Access Pass is available to use at creation time.| No|
|lifetimeInMinutes|Int32|The lifetime of the temporaryAccessPass in minutes starting at creation time or at startDateTime, if set. Minimum 10, Maximum 43200 (equivalent to 30 days).| No|
|isUsableOnce|Boolean|Determines if the pass is limited to a one time use. If True – the pass can be used once, if False – the pass can be used multiple times within the temporaryAccessPass life time. A multi-use Temporary Access Pass (isUsableOnce = false), can only be created and used for sign-in if it is allowed by the Temporary Access Pass Authentication method policy.|  No|



## Response

If successful, this method returns a `201 Created` response code and a [temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_temporaryaccesspassauthenticationmethod_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/kim@contoso.com/authentication/temporaryAccessPassMethods
Content-Type: application/json
Content-length: 209

{
  "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethod",
  "startDateTime": "2021-01-26T00:00:00.000Z",
  "lifetimeInMinutes": 60,
  "isUsableOnce": false
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-temporaryaccesspassauthenticationmethod-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-temporaryaccesspassauthenticationmethod-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/create-temporaryaccesspassauthenticationmethod-from--objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-temporaryaccesspassauthenticationmethod-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.temporaryAccessPassAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.temporaryAccessPassAuthenticationMethod",
    "id": "81757535-e21e-4330-a338-33b8038ff12b",
    "temporaryAccessPass": "nc+&G=xwDKCz",
    "createdDateTime": "2021-01-25T23:53:35.5026721Z",
    "startDateTime": "2021-01-26T00:00:00Z",
    "lifetimeInMinutes": 60,
    "isUsableOnce": false,
    "isUsable": false,
    "methodUsabilityReason": "NotYetValid"

}
```
