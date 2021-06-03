---
title: "List childFolders"
description: "Get the folder collection under the specified folder. You can use the `.../me/MailFolders` shortcut to get the top-level "
author: "abheek-das"
localization_priority: Normal
ms.prod: "outlook"
doc_type: apiPageType
---

# List childFolders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the folder collection under the specified folder. You can use the `.../me/mailFolders` shortcut to get the top-level
folder collection and navigate to another folder.

By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:------------------------------------|
| Delegated (work or school account)     | Mail.ReadBasic, Mail.Read, Mail.ReadWrite           |
| Delegated (personal Microsoft account) | Mail.ReadBasic, Mail.Read, Mail.ReadWrite           |
| Application                            | Mail.ReadBasic.All, Mail.Read, Mail.ReadWrite           |

## HTTP request

To get all the child folders under the specified folder, excluding those that are hidden:
<!-- { "blockType": "ignored" } -->

```http
GET /me/mailFolders/{id}/childFolders
GET /users/{id | userPrincipalName}/mailFolders/{id}/childFolders
```

To include _hidden_ child folders in the response:
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/childFolders?includeHiddenFolders=true
GET /users/{id | userPrincipalName}/mailFolders/{id}/childFolders?includeHiddenFolders=true
```

## Optional query parameters
To return a list of all childFolders including those that are hidden (their **isHidden** property is true), in the request URL, specify the `includeHiddenFolders` query parameter as `true`, as shown in the [HTTP request](#http-request) section.

This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Type   | Description               |
|:--------------|:-------|:--------------------------|
| Authorization | string | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [mailFolder](../resources/mailfolder.md) objects in the response body.

## Examples

### Example 1: List mail folders

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailfolder_get_childfolders"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailFolders/AAMkAGVmMDEzM/childFolders
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailfolder-get-childfolders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailfolder-get-childfolders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/mailfolder-get-childfolders-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailfolder-get-childfolders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


<!-- markdownlint-disable MD024 -->

#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailFolder",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "AAMkAGVmMDEzA",
      "displayName": "Internal Screens",
      "parentFolderId": "AAMkAGVmMDEzM",
      "childFolderCount": 0,
      "unreadItemCount": 2,
      "totalItemCount": 2,
      "wellKnownName": null,
      "isHidden": false
    },
    {
      "id": "AAMkAGVmMDEzB",
      "displayName": "Project Falcon",
      "parentFolderId": "AAMkAGVmMDEzM",
      "childFolderCount": 0,
      "unreadItemCount": 5,
      "totalItemCount": 5,
      "wellKnownName": null,
      "isHidden": false
    },
    {
      "id": "AAMkAGVmMDEzMA",
      "displayName": "Finder",
      "parentFolderId": "AAMkAGVmMDEzM",
      "childFolderCount": 4,
      "unreadItemCount": 0,
      "totalItemCount": 0,
      "wellKnownName": "searchfolders",
      "isHidden": false
    }
  ]
}
```

### Example 2: List mail search folders

#### Request

The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_childfolders_of_searchfolders"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailFolders/searchfolders/childFolders
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-childfolders-of-searchfolders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-childfolders-of-searchfolders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-childfolders-of-searchfolders-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-childfolders-of-searchfolders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailSearchFolder",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mailSearchFolder",
      "id": "AAMkAGE1NWMz",
      "displayName": "Get MyAnalytics",
      "parentFolderId": "AAMkAGE1NWMx",
      "childFolderCount": 0,
      "unreadItemCount": 6,
      "totalItemCount": 6,
      "isHidden": false,
      "wellKnownName": null,
      "isSupported": true,
      "filterQuery": "contains(subject, 'MyAnalytics')"
    },
    {
      "@odata.type": "#microsoft.graph.mailSearchFolder",
      "id": "AAMkAGE1NWMy",
      "displayName": "Action Required",
      "parentFolderId": "AAMkAGE1NWMx",
      "childFolderCount": 0,
      "unreadItemCount": 2,
      "totalItemCount": 4,
      "isHidden": false,
      "wellKnownName": null,
      "isSupported": true,
      "filterQuery": "contains(subject, 'ACTION REQUIRED')"
    }
  ]
}
```

### Example 3: Include hidden child folders under a specified mail folder

The next example uses the `includeHiddenFolders` query parameter to get a list of child folders under a specified mail folder including hidden mail folders. The response includes the "Clutters" folder that has the **isHidden** set to true.

#### Request

The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "mailfolder_get_hiddenchildfolders"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/mailFolders/AAMkAGVmMDEzM/childFolders?includeHiddenFolders=true
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/mailfolder-get-hiddenchildfolders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/mailfolder-get-hiddenchildfolders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/mailfolder-get-hiddenchildfolders-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/mailfolder-get-hiddenchildfolders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailFolder",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "AAMkAGVmMDEzA",
      "displayName": "Internal Screens",
      "parentFolderId": "AAMkAGVmMDEzM",
      "childFolderCount": 0,
      "unreadItemCount": 2,
      "totalItemCount": 2,
      "wellKnownName": null,
      "isHidden": false
    },
    {
      "id": "AAMkAGVmMDEzB",
      "displayName": "Clutters",
      "parentFolderId": "AAMkAGVmMDEzM",
      "childFolderCount": 0,
      "unreadItemCount": 5,
      "totalItemCount": 5,
      "wellKnownName": null,
      "isHidden": true
    },
    {
      "id": "AAMkAGVmMDEzMA",
      "displayName": "Finder",
      "parentFolderId": "AAMkAGVmMDEzM",
      "childFolderCount": 4,
      "unreadItemCount": 0,
      "totalItemCount": 0,
      "wellKnownName": "searchfolders",
      "isHidden": false
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List childFolders",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


