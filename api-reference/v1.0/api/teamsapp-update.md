---
title: "Update teamsApp"
description: "Update an app previously published to a Teams app catalog. "
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Update teamsApp

Namespace: microsoft.graph

Update an [app](../resources/teamsapp.md) previously published to the Microsoft Teams app catalog. To update an app, the **distributionMethod** property for the app must be set to `organization`.

This API specifically updates an app published to your organization's app catalog (the tenant app catalog).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

>**Note:** Only global administrators can call this API.

| Permission Type                        | Permissions (from least to most privileged)|
|:----------------------------------     |:-------------|
| Delegated (work or school account)     | AppCatalog.ReadWrite.All, Directory.ReadWrite.All |
| Delegated (work or school account) | AppCatalog.Submit|
| Delegated (personal Microsoft account) | Not supported|
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /appCatalogs/teamsApps/{id}/appDefinitions
```

## Query parameters

|Property|Type|Description|
|----|----|----|
|requiresReview| Boolean | This optional query parameter triggers the app review process. Users with admin privileges can submit apps without triggering a review. If users want to request a review before publishing, they must set  `requiresReview` to `true`. A user who has admin privileges can opt not to set `requiresReview` or set the value to `false`  and the app will be considered approved and will publish instantly.|

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/zip. Required. |

## Request body

In the request body, include a Teams zip manifest payload. For details, see [Create an app package](/microsoftteams/platform/concepts/apps/apps-package)

>**Note:** Use the ID returned from the [List published apps](./teamsapp-list.md) call to reference the app you'd like to update. Do not use the ID from the manifest of the zip app package.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update an application previously published to the Microsoft Teams app catalog

### Request

<!-- markdownlint-disable MD034 -->
<!-- {
  "blockType": "request",
  "name": "update_teamsapp"
}-->

```http
PUT https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/06805b9e-77e3-4b93-ac81-525eb87513b8
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```

<!-- markdownlint-disable MD024 -->

### Response

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Update a previously reviewed and published application to the Teams app catalog

### Request

<!-- markdownlint-disable MD034 -->
<!-- {
  "blockType": "request",
  "name": "update_teamsapp"
}-->

```http
POST https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/e3e29acb-8c79-412b-b746-e6c39ff4cd22/appDefinitions?requiresReview=true
Content-type: application/zip
Content-length: 244

[Zip file containing a Teams app package]
```

### Response

If successful, this method returns a `201 Created` response code and the key/value pair `publishingState`: `submitted` in the response body. For details, see [teamsAppDefinition](../resources/teamsappdefinition.md).

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamsApp",
  "truncated": true
} -->

```http
HTTP/1.1 201 Created
Location: https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/e3e29acb-8c79-412b-b746-e6c39ff4cd22/appDefinitions/MGQ4MjBlY2QtZGVmMi00Mjk3LWFkYWQtNzgwNTZjZGU3Yzc4IyMxLjAuMA==

{
    "@odata.context": "https://graph.microsoft.com/v1/$metadata#appDefinition",
    "@odata.etag": "158749010",
    "id": "MGQ4MjBlY2QtZGVmMi00Mjk3LWFkYWQtNzgwNTZjZGU3Yzc4IyMxLjAuMA==",
    "teamsAppId": "e3e29acb-8c79-412b-b746-e6c39ff4cd22",
    "displayName": "Test app",
    "version": "1.0.11",
    "azureADAppId": "a651cc7d-ec54-4fb2-9d0e-2c58dc830b0b",
    "requiredResourceSpecificApplicationPermissions":[
         "ChannelMessage.Read.Group",
         "Channel.Create.Group",
         "Tab.ReadWrite.Group",
         "Member.Read.Group"
    ],
    "publishingState": "submitted",
    "lastModifiedDateTime": "2020-02-10 22:48:33.841",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2020-08-08 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "teamsApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
