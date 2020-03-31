---
title: "Permissions"
description: "Publish an app to the Microsoft Teams apps catalog. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Publish apps to your organization's app catalog

Namespace: microsoft.graph



Publish an [app](../resources/teamsapp.md) to the Microsoft Teams apps catalog.
Specifically, this API publishes the app to your organization's catalog (the tenant app catalog);
the created resource will have `distributionMethod` = `organization`.

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
POST /appCatalogs/teamsApps
```

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/zip |

## Request body

Teams Zip Manifest Payload.
For Teams application zip file [see Create an app package](/microsoftteams/platform/concepts/apps/apps-package).
You can't create an app for an organization that has the same manifest ID as another app in that organization.

## Response

If successful, this method returns a `200 OK` response code and a [teamsCatalogApp](../resources/teamsapp.md) object.

## Example

### Request

```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```

For information about how to create a Microsoft Teams application zip file, see [Create an app package](/microsoftteams/platform/concepts/apps/apps-package).

### Response

```
HTTP/1.1 201 Created
Content-Type: application/json

{
  "id": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
  "externalId": "b5561ec9-8cab-4aa3-8aa2-d8d7172e4311",
  "name": "Test App",
  "version": "1.0.0",
  "distributionMethod": "organization"
}
```
