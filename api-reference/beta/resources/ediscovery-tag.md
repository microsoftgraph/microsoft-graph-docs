---
title: "tag resource type"
description: "Represents an eDiscovery tag, which is used to mark documents during review to separate responsive and non-responsive content"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# tag resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an eDiscovery tag, which is used to mark documents during review to separate responsive and non-responsive content.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List tags](../api/ediscovery-case-list-tags.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md) collection|Get a list of the **tag** objects and their properties.|
|[Create tag](../api/ediscovery-case-post-tags.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md)|Create a new **tag** object.|
|[Get tag](../api/ediscovery-tag-get.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md)|Read the properties and relationships of a **tag** object.|
|[Update tag](../api/ediscovery-tag-update.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md)|Update the properties of a **tag** object.|
|[Delete tag](../api/ediscovery-tag-delete.md)|None|Delete a **tag** object.|
|[asHierarchy](../api/ediscovery-tag-ashierarchy.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md) collection|Lists all tags, including their hierarchy.|
|[List childTags](../api/ediscovery-tag-childtags.md)|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md) collection|Get a list of child **tag** objects associated with a tag.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|childSelectability|[microsoft.graph.ediscovery.childSelectability](../resources/ediscovery-tag.md#childselectability-values)|Indicates whether a single or multiple child tags can be associated with a document. Possible values are: `One`, `Many`.  This value controls whether the UX presents the tags as checkboxes or a radio button group.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the tag.|
|description|String|The description for the tag.|
|displayName|String|Display name of the tag.|
|id|String|Unique identifier for the tag.|
|lastModifiedDateTime|DateTimeOffset|The date and time the tag was last modified.|

### childSelectability values

|Member|Description|
|:----|-----------|
|One|Only one child can be selected. This corresponds to a UI that presents the tags with radio buttons.|
|Many|Zero or many children can be selected. This corresponds to a UI that presents the tags with checkboxes.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|childTags|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md) collection|Returns the tags that are a child of a tag.|
|parent|[microsoft.graph.ediscovery.tag](../resources/ediscovery-tag.md)|Returns the parent tag of the specified tag.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.tag",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.tag",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "childSelectability": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```
