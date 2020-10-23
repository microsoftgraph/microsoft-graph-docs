---
author: JeremyKelley
description: "The sharingLink resource groups link-related data items into a single structure."
ms.date: 09/10/2017
title: SharingLink
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# sharingLink resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **sharingLink** resource groups link-related data items into a single structure.

If a [**permission**](permission.md) resource has a non-null **sharingLink** facet, the permission represents a sharing link (as opposed to permissions granted to a person or group).

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
  "preventsDownload": false,
  "type": "view | edit | embed",
  "scope": "anonymous | organization",
  "webHtml": "string",
  "webUrl": "url"
}
```

## Properties

| Property       | Type          | Description
|:---------------|:--------------|:-------------------------------------
| application    | [identity][]  | The app the link is associated with.
| type           | String        | The type of the link created.
| scope          | String        | The scope of the link represented by this permission. Value `anonymous` indicates the link is usable by anyone, `organization` indicates the link is only usable for users signed into the same tenant.
| preventsDownload | Boolean       | If true then the user can only use this link to view the item on the web, and cannot use it to download the contents of the item. Only for OneDrive for Business and SharePoint.
| webHtml        | String        | For `embed` links, this property contains the HTML code for an `<iframe>` element that will embed the item in a webpage.
| webUrl         | String        | A URL that opens the item in the browser on the OneDrive website.

[Identity]: identity.md

### Type options

The following table defines the possible values for the **type** property.

| Value    | Role     | Description
|:---------|:---------|:---------------------------------------------------------
| `view`   | `read`   | A view-only sharing link, allowing read-only access.
| `edit`   | `write`  | An edit sharing link, allowing read-write access.
| `embed`  | `read`   | A view-only sharing link that can be used to embed content into a host webpage. Embed links are not available for OneDrive for Business or SharePoint.

### Scope options

The following table defines the possible values for the **scope** property.

| Value            | Description
|:-----------------|:------------------------------------------------------------
| `anonymous`      | Anyone with the link has access, without needing to sign in. This may include people outside of your organization.
| `organization`   | Anyone signed into your organization (tenant) can use the link to get access. Only available in OneDrive for Business and SharePoint.
| `existingAccess` | Only people who have already been granted access to the item through other means can access the item using this link. Only available in OneDrive for Business and SharePoint.
| `users`          | The link grants access only to a specific list of people. Only available in OneDrive for Business and SharePoint.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "The sharing link facet provides information about how a file is shared.",
  "keywords": "sharing,sharing link, sharing url, webUrl",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


