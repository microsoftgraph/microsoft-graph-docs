---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: SharingLink
---
# SharingLink resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **SharingLink** resource groups link-related data items into a single structure.

If a [**Permission**](permission.md) resource has a non-null **sharingLink** facet, the permission represents a sharing link (as opposed to permissions granted to a person or group).

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [ "application", "scope" ],
  "@odata.type": "microsoft.graph.sharingLink"
}-->

```json
{
  "application": { "@odata.type": "microsoft.graph.identity" },
  "type": "view | edit | embed",
  "scope": "anonymous | organization",
  "webHtml": "string",
  "webUrl": "url"
}
```

## Properties

| Property    | Type          | Description
|:------------|:--------------|:-------------------------------------
| application | [identity][]  | The app the link is associated with.
| type        | String        | The type of the link created.
| scope       | String        | The scope of the link represented by this permission. Value `anonymous` indicates the link is usable by anyone, `organization` indicates the link is only usable for users signed into the same tenant.
| webHtml     | String        | For `embed` links, this property contains the HTML code for an `<iframe>` element that will embed the item in a webpage.
| webUrl      | String        | A URL that opens the item in the browser on the OneDrive website.

[Identity]: identity.md

## Type enumeration

This table defines the possible values for the **type** property:

| Value   | Role    | Description
|:--------|:--------|:---------------------------------------------------------
| `view`  | `read`  | A view-only sharing link, allowing read-only access.
| `edit`  | `write` | An edit sharing link, allowing read-write access.
| `embed` | `read`  | A view-only sharing link that can be used to embed content into a host webpage. Embed links are not available for OneDrive for Business or SharePoint.

## Scope enumeration

| Value          | Description                                                                                                                 |
|:---------------|:----------------------------------------------------------------------------------------------------------------------------|
| `anonymous`    | The sharing link is available for anyone to use.                                                                            |
| `organization` | The sharing link is available for anyone within the same organization (tenant) to use. Not available for OneDrive Personal. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "The sharing link facet provides information about how a file is shared.",
  "keywords": "sharing,sharing link, sharing url, webUrl",
  "section": "documentation",
  "tocPath": ""
}-->
