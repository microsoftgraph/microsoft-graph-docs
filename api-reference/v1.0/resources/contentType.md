---
author: daspek
ms.author: dspektor
ms.date: 09/12/2017
title: ContentType
---
# ContentType resource type

The **contentType** resource represents a _content type_ in SharePoint.
Content types allow you to define a set of columns that must be present on every [**listItem**][listItem] in a [**list**][list].

[list]: list.md
[listItem]: listItem.md

## JSON representation

Here is a JSON representation of a **contentType** resource.
<!-- {
  "blockType": "resource",
 "baseType": "microsoft.graph.entity",
 "@odata.type": "microsoft.graph.contentType" } -->

```json
{
  "description": "string",
  "group": "string",
  "hidden": false,
  "id": "string",
  "inheritedFrom": { "@type": "microsoft.graph.itemReference" },
  "name": "string",
  "order": { "@type": "microsoft.graph.contentTypeOrder" },
  "parentId": "string",
  "readOnly": false,
  "sealed": false,

  "columnLinks": [{ "@type": "microsoft.graph.columnLink" }]
}
```

## Properties

| Property name     | Type                 | Description
|:------------------|:---------------------|:----------------------------------
| **description**   | string               | The descriptive text for the item.
| **group**         | string               | The name of the group this content type belongs to. Helps organize related content types.
| **hidden**        | boolean              | Indicates whether the content type is hidden in the list's 'New' menu.
| **id**            | string               | The unique identifier of the content type.
| **inheritedFrom** | [itemReference][]    | If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.
| **name**          | string               | The name of the content type.
| **order**         | [contentTypeOrder][] | Specifies the order in which the content type appears in the selection UI.
| **parentId**      | string               | The unique identifier of the content type.
| **readOnly**      | boolean              | If `true`, the content type cannot be modified unless this value is first set to `false`.
| **sealed**        | boolean              | If `true`, the content type cannot be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.

## Relationships

| Property name   | Type                      | Description
|:----------------|:--------------------------|:-------------------------------
| **columnLinks** | [columnLink][] collection | The collection of columns that are required by this content type

See [Introduction to content types and content type publishing][contentTypeIntro] for more information.

[columnLink]: columnLink.md
[contentTypeIntro]: https://support.office.com/en-us/article/Introduction-to-content-types-and-content-type-publishing-e1277a2e-a1e8-4473-9126-91a0647766e5
[itemReference]: itemReference.md
[contentTypeOrder]: contentTypeOrder.md

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentType"
} -->
