---
author: swapnil1993
title: "contentType: associateWithHubSites"
description: "Associate a content type with list of hubsites."
localization_priority: Normal
doc_type: apiPageType
ms.prod: "sites-and-lists"
---

# contentType: associateWithHubSites

Namespace: microsoft.graph


Associate a published [content type][contentType] present in content type hub with a list of hub sites.

>**Note:** This feature is limited to tenants that have a SharePoint Syntex license.
  

## Permissions  

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions_reference.md).

  

|Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------
|Delegated (work or school account) | Sites.Manage.All, Sites.FullControl.All  |
|Delegated (personal Microsoft account) | Not supported. |
|Application | Sites.Manage.All, Sites.FullControl.All |

  

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /sites/id/contentTypes/id/associateWithHubSites
```
>**Note:** The siteId represents a content type hub site.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|-|-|-|
|hubSiteUrls| Collection(string) |List of cannonical URLs to the hub sites where the content type needs to be enforced. Required.|
|propagateToExistingLists| Boolean |If `true`, content types will be enforced on existing lists in the hub sites; otherwise, it will be applied only to newly created lists. 

## Response

If successful, this action returns a `204 No Content` response code.

## Example

### Request

<!-- {
  "blockType": "request",
  "name": "contenttype_associatewithhubsites"
}
-->
```http
POST https://graph.microsoft.com/v1.0/sites/id/contentTypes/id/associateWithHubSites
Content-Type: application/json

{
   "hubSiteUrls":[
      "https://graph.microsoft.com/v1.0/sites/id"
   ],
   "propagateToExistingLists":false
}
```
---




### Response


<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

  

[contentType]: ../resources/contentType.md
