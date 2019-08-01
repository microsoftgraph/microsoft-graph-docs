---
title: "List trendingAround"
description: "Calculated insight that returns the list of items trending around a user."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# List trendingAround

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Calculated insight that returns the list of items trending around a user.

**Note:** This API will be deprecated and replaced by the [Trending API](../resources/insights-trending.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Sites.Read.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Read.All |

## HTTP request
```http
GET /me/trendingAround
GET /users/{id | userPrincipalName}/trendingAround
GET /drive/root/createdByUser/trendingAround
GET /drive/root/lastModifiedByUser/trendingAround
```
## Optional query parameters
This method supports the [OData Query Parameters](https://developer.microsoft.com/graph/docs/concepts/query_parameters) to help customize the response.

## Request headers
| Header         | Value                      |
|:---------------|:---------------------------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type   | application/json           |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a 200 OK response code and collection of [driveItem](../resources/driveitem.md) objects in the response body.

## Example
##### Request
```http
GET https://graph.microsoft.com/beta/me/trendingAround
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 226

{
  "id": "id-value",
  "name": "name-value",
  "DateTimeCreated": "DateTimeCreated-value",
  "DateTimeLastModified": "DateTimeLastModified-value",
  "webUrl": "webUrl-value",
}
```
