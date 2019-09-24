---
title: "Permissions"
description: "Remove the app from your organization's app catalog (the tenant app catalog). "
localization_priority: Normal
author: "nkramer"
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Remove an app from your organization's app catalog

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove the [app](../resources/teamsapp.md) from your organization's app catalog (the tenant app catalog). 
To remove your app from your organization's app catalog, specify `organization` as the **distributionMethod** in the [teamsCatalogApp](../resources/teamsapp.md) resource.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://developer.microsoft.com/graph/docs/concepts/permissions_reference).

>**Note:** Only global administrators can call this API. 

| Permission Type                        | Permissions (from least to most privileged)|
|:----------------------------------     |:-------------|
| Delegated (work or school account)     | AppCatalog.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported|
| Application                            | Not supported|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /appCatalogs/teamsApps/{id}
```

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |

## Request body

None.

>**Note:** Use the ID returned from the [List published apps](./teamsapp-list.md) call for to reference the app you'd like to update. Do not use the ID from the manifest of the zip app package.

## Response

```
HTTP/1.1 204 No Content
```

## Example

### Request

```http
DELETE https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
```

### Response

```http
HTTP/1.1 204 No Content
```
