---
title: "servicePrincipal: createPasswordSingleSignOnCredentials"
description: "Create single sign-on credentials using a password for a user or group."
localization_priority: Normal
author: "sureshja"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# servicePrincipal: createPasswordSingleSignOnCredentials

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create single sign-on credentials using a password for a user or group.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Application.ReadWrite.All and Directory.Read.All,  Directory.ReadWrite.All, Directory.AccessAsUser.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Application.ReadWrite.All and Directory.Read.All, Directory.ReadWrite.All |

> [!NOTE]
> Users can create credentials for themselves. Service principal owners and admins with the following roles can create credentials for any user or group: GlobalAdministrator, ApplicationAdministrator, CloudApplicationAdministrator. To learn more, see [Directory roles](/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /servicePrincipals/{id}/createPasswordSingleSignOnCredentials
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required.  |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter    | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The ID of the user or group this credential set belongs to.|
|credentials|[credential](../resources/credential.md) collection|A list of credential objects that define the complete sign in flow.|

## Response

If successful, this method returns a `200 OK` response code and a new [passwordSingleSignOnCredentialSet](../resources/passwordsinglesignoncredentialset.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_createpasswordsinglesignoncredentials"
}-->

```http
POST https://graph.microsoft.com/beta/servicePrincipals/{id}/createPasswordSingleSignOnCredentials
Content-type: application/json

{
  "id": "5793aa3b-cca9-4794-679a240f8b58",
  "credentials": [
    {
      "fieldId": "param_username",
      "value": "myusername",
      "type": "username"
    },
    {
      "fieldId": "param_password",
      "value": "pa$$w0rd",
      "type": "password"
    }
  ]
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-createpasswordsinglesignoncredentials-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-createpasswordsinglesignoncredentials-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/serviceprincipal-createpasswordsinglesignoncredentials-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-createpasswordsinglesignoncredentials-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordSingleSignOnCredentialSet"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "5793aa3b-cca9-4794-679a240f8b58",
  "credentials": [
    {
      "fieldId": "param_username",
      "value": "myusername",
      "type": "username"
    },
    {
      "fieldId": "param_password",
      "value": null,
      "type": "password"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: createPasswordSingleSignOnCredentials",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
