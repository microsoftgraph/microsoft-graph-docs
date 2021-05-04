---
author: daspek
description: "The contentType resource represents a content type in SharePoint."
title: contentType
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# contentType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a content type in SharePoint.
Content types allow you to define a set of columns that must be present on every [**listItem**][listItem] in a [**list**][list].

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List contentTypes in a site](../api/site-list-contenttypes.md)|[contentType](../resources/contenttype.md) collection|Get a list of the [contentType](../resources/contenttype.md) objects and their properties in a [site](../resources/site.md).|
|[List contentTypes in a list](../api/list-list-contenttypes.md)|[contentType](../resources/contenttype.md) collection|Get a list of the [contentType](../resources/contenttype.md) objects and their properties in a [list](../resources/list.md).|
|[Create contentType for a site](../api/site-post-contenttypes.md)|[contentType](../resources/contenttype.md)|Create a new [contentType](../resources/contenttype.md) object in a [site](../resources/site.md).|
|[Get contentType](../api/contenttype-get.md)|[contentType](../resources/contenttype.md)|Read the properties and relationships of a [contentType](../resources/contenttype.md) object.|
|[Update contentType](../api/contenttype-update.md)|[contentType](../resources/contenttype.md)|Update the properties of a [contentType](../resources/contenttype.md) object.|
|[Delete contentType](../api/contenttype-delete.md)|None|Deletes a [contentType](../resources/contenttype.md) object.|
|[isPublished](../api/contenttype-ispublished.md)|Boolean| Checks if the [contentType](../resources/contenttype.md) is published.|
|[publish](../api/contenttype-publish.md)|[contentType](../resources/contenttype.md)| Publish a [contentType](../resources/contenttype.md).|
|[unpublish](../api/contenttype-unpublish.md)|[contentType](../resources/contenttype.md)|Unpublish a [contentType](../resources/contenttype.md).|
|[addCopy](../api/contenttype-addcopy.md)|[contentType](../resources/contenttype.md)|Add copy of a [contentType](../resources/contenttype.md) from a [site](../resources/site.md) to a [list](../resources/list.md)).|
|[associateWithHubSites](../api/contenttype-associatewithhubsites.md)|[contentType](../resources/contenttype.md)|Associates a [contentType](../resources/contenttype.md) with a list of hubsites.|
|[copyToDefaultContentLocation](../api/contenttype-copytodefaultcontentlocation.md)|[contentType](../resources/contenttype.md)| Copy a file to default content location in a [contentType](../resources/contenttype.md).|
|[List columns](../api/contenttype-list-columns.md)|[columnDefinition](../resources/columnDefinition.md) collection|Get a collection of columns, represented as [columnDefinition](../resources/columnDefinition.md) resources, in a **contentType**.|
|[Create column](../api/contenttype-post-columns.md)|[columnDefinition](../resources/columnDefinition.md)|Add a column to a **content type** in a site or list.|


## Properties

| Property name     | Type                 | Description
|:------------------|:---------------------|:----------------------------------
| **description**   | string               | The descriptive text for the item.
| **group**         | string               | The name of the group this content type belongs to. Helps organize related content types.
| **hidden**        | Boolean              | Indicates whether the content type is hidden in the list's 'New' menu.
| **id**            | string               | The unique identifier of the content type.
| **inheritedFrom** | [itemReference][]    | If this content type is inherited from another scope (like a site), provides a reference to the item where the content type is defined.
| **name**          | string               | The name of the content type.
| **order**         | [contentTypeOrder][] | Specifies the order in which the content type appears in the selection UI.
| **parentId**      | string               | The unique identifier of the content type.
| **readOnly**      | Boolean              | If `true`, the content type cannot be modified unless this value is first set to `false`.
| **sealed**        | Boolean              | If `true`, the content type cannot be modified by users or through push-down operations. Only site collection administrators can seal or unseal content types.
| **isBuiltIn**            | Boolean| Specifies if a content type is a built-in content type. 
| **documentSet**       | [documentSet][]      | [Document Set](https://docs.microsoft.com/sharepoint/governance/document-set-planning#about-document-sets) metadata.
| **documentTemplate**  | [documentSetContent][] | Document template metadata. To make sure that documents have consistent content across a site and its subsites, you can associate a Word, Excel, or PowerPoint template with a site content type.
| **associatedHubsUrls**       | Collection(string) | List of canonical URLs for hub sites with which this content type is associated to. This will contain all hubsites where this content type is queued to be enforced or is already enforced. Enforcing a content type means that the content type will be applied to the lists in the enforced sites.
| **propagateChanges**   | Boolean              | If `true`, any changes made to the content type will be pushed to inherited content types and lists that implement the content type.



## Relationships

| Property name   | Type                      | Description
|:----------------|:--------------------------|:-------------------------------
| **base**   | [contentType][]  | Parent contentType from which this content type is derived. 
| **columnLinks** | [columnLink][] collection | The collection of columns that are required by this content type
| **baseTypes**   | Collection([contentType][])     | The collection of content types that are ancestors of this content type.
| **columnPositions**       | Collection([columnDefinition][]) | Column order information in a content type.
| **columns**     | Collection([columnDefinition][])  | The collection of column definitions for this contentType.

See [Introduction to content types and content type publishing][contentTypeIntro] for more information.

[columnLink]: columnlink.md
[contentTypeIntro]: https://support.office.com/en-us/article/Introduction-to-content-types-and-content-type-publishing-e1277a2e-a1e8-4473-9126-91a0647766e5
[itemReference]: itemreference.md
[contentTypeOrder]: contenttypeorder.md
[columnDefinition]: columnDefinition.md
[contentType]: contentType.md
[documentSet]: documentSet.md
[documentSetContent]: documentSetContent.md

## JSON representation

The following is a JSON representation of a **contentType** resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.contentType","keyProperty":"id" } -->

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
  "columnLinks": [{ "@type": "microsoft.graph.columnLink" }],
  "base": { "@type": "microsoft.graph.contentType" },
  "columnPositions" : [{ "@type": "microsoft.graph.columnDefinition" }],
  "isBuiltIn" : false,
  "documentSet" : { "@type": "microsoft.graph.documentSet" },
  "documentTemplate" : { "@type": "microsoft.graph.documentSetContent" },
  "associatedHubsUrls" : ["string"],
  "propagateChanges" : false,
  "baseTypes" : [{ "@type": "microsoft.graph.contentType" }],
  "columns" : [{ "@type": "microsoft.graph.columnDefinition" }]
}
```

[list]: list.md
[listItem]: listitem.md
<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ContentType",
  "suppressions": []
}
-->


