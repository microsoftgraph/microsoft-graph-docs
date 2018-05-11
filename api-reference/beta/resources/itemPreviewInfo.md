---
author: kevinlam
ms.author: kevinlam
ms.date: 3/16/2018
title: ItemPreviewInfo - OneDrive API
---
# ItemPreviewInfo resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **ItemPreviewInfo** resource contains information on how to embed a preview of a [DriveItem](driveitem.md).

## JSON representation

```json
{
    "getUrl": "https://www.onedrive.com/embed?foo=bar&bar=baz",
    "postParameters": "param1=value&param2=another%20value",
    "postUrl": "https://www.onedrive.com/embed_by_post"
}
```

## Properties

| Name           | Type   | Description
|:---------------|:-------|:---------------------------------------------------
| getUrl         | string | URL suitable for embedding using HTTP GET (iframes, etc.)
| postUrl        | string | URL suitable for embedding using HTTP POST (form post, JS, etc.)
| postParameters | string | POST parameters to include if using postUrl

Either getUrl, postUrl, or both may be returned depending on the current state of support for the specified options.

postParameters is a string formatted as `application/x-www-form-urlencoded`, and if performing a POST to the postUrl the content-type should be set accordingly. For example:
```
POST https://www.onedrive.com/embed_by_post
Content-Type: application/x-www-form-urlencoded

param1=value&param2=another%20value
```