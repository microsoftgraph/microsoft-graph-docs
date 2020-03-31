---
title: "Permissions"
description: "Update an app previously published to the Microsoft Teams app catalog. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Update apps published to your organization's app catalog

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update an [app](../resources/teamsapp.md) previously published to the Microsoft Teams app catalog.
This API specifically updates an app published to your organization's app catalog (the tenant app catalog).
To publish to your organization's app catalog, specify `organization` as the **distributionMethod** in the [teamsCatalogApp](../resources/teamsapp.md) resource.

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
PUT /appCatalogs/teamsApps/{id}
```

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/zip |

## Request body

Teams Zip Manifest Payload: For Teams application zip file [see Create an app package](/microsoftteams/platform/concepts/apps/apps-package)

>**Note:** Use the ID returned from the [List published apps](./teamsapp-list.md) call for to reference the app you'd like to update.
Do not use the ID from the manifest of the zip app package.

## Response

```
HTTP/1.1 204 No Content
```

## Example

### Request

```
PUT https://graph.microsoft.com/beta/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```

For Teams application zip file [see Create app package](/microsoftteams/platform/concepts/apps/apps-package)

### Response

```
HTTP/1.1 204 No Content
```
