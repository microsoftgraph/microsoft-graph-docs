---
title: "List teamsApp"
description: "List Teams apps published in the tenant app catalog."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List teamsApp

Namespace: microsoft.graph

List [apps](../resources/teamsapp.md) published in the Microsoft Teams app catalog. This includes apps from the Microsoft Teams store, as well as apps from your organization's app catalog (the tenant app catalog). To get apps from your organization's app catalog only, specify `organization` as the **distributionMethod** in the request.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

> **Note:** Only global administrators can call this API.

| Permission Type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:------------------------------------|
| Delegated (work or school account)     | AppCatalog.Read.All, AppCatalog.ReadWrite.All, Directory.Read.All, Directory.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported                       |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /appCatalogs/teamsApps
```

## Optional query parameters

This method supports the `$filter`, `$select`, and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response.

Using `$expand=AppDefinitions` will return more information about the state of the app. 

> **Note:** You can filter on any of the fields of the [teamsApp](../resources/teamsapp.md) object to shorten the list of results. You can use any of the following filter operations: Equal, not-equal, and, or, and not.

## Request headers

| Header        | Value                     |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [teamsApp](../resources/teamsapp.md) objects in the response body.

## Examples

### Example 1: List all applications specific to the tenant

The following example lists all applications that are specific to your tenant.

#### Request

<!-- {
  "blockType": "request",
  "name": "list_teamsapps_filter_distributionMethod"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/appCatalogs/teamsApps?$filter=distributionMethod eq 'organization'
```



<!-- markdownlint-disable MD024 -->

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true,
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "externalId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod": "Organization"
    }
  ]
}
```

### Example 2: List applications with a given ID

The following example lists applications with a given ID.

#### Request

<!-- {
  "blockType": "request",
  "name": "list_teamsapp_filter_id"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/appCatalogs/teamsApps?$filter=id%20eq%20'b1c5353a-7aca-41b3-830f-27d5218fe0e5'
```

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true,
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "b1c5353a-7aca-41b3-830f-27d5218fe0e5",
      "externalId": "f31b1263-ba99-435a-a679-911d24850d7c",
      "name": "Test App",
      "version": "1.0.1",
      "distributionMethod": "Organization"
    }
  ]
}
```
### Example 3: Find application based on the Teams app manifest ID.

The following example lists applications that match the 'id' specified in the Teams app manifest. In the example, the manifest ID of the Teams app is 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'.

#### Request

<!-- {
  "blockType": "request",
  "name": "list_teamsapp_filter_externalid"
}-->

```msgraph-interactive
GET  https://graph.microsoft.com/v1.0/appCatalogs/teamsApps?$filter=externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'
```

#### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true,
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#appCatalogs/teamsApps",
    "value": [
        {
            "id": "22f73bbe-f67a-4dea-bd54-54cac718cb2b",
            "externalId": "cf1ba4c7-f94e-4d80-ba90-5594b641a8ee",
            "displayName": "YPA",
            "distributionMethod": "organization"
        }
    ]
}
```

## See also

- [List apps installed in a team](team-list-installedapps.md)
- [List apps installed in the personal scope of a user](userteamwork-list-installedapps.md)

