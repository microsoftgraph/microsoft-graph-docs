---
author: JeremyKelley
description: "Here is a JSON representation of a columnDefinition resource."
ms.date: 09/11/2017
title: ColumnDefinition
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---
# columnDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a column in a [site][], [list][] or [contentType][].

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List columns in a site](../api/site-list-columns.md)|[columnDefinition](../resources/columndefinition.md) collection|Get a list of the [columnDefinition](../resources/columndefinition.md) objects and their properties in a [site](../resources/site.md).|
|[List columns in a list](../api/list-list-columns.md)|[columnDefinition](../resources/columndefinition.md) collection|Get a list of the [columnDefinition](../resources/columndefinition.md) objects and their properties in a [list](../resources/list.md).|
|[List columns in a content type](../api/contenttype-list-columns.md)|[columnDefinition](../resources/columndefinition.md) collection|Get a list of the [columnDefinition](../resources/columndefinition.md) objects and their properties in a [content type](../resources/contenttype.md).|
|[Create columnDefinition for a site](../api/site-post-columns.md)|[columnDefinition](../resources/columndefinition.md)|Create a new [columnDefinition](../resources/columndefinition.md) object in a [site](../resources/site.md).|
|[Create columnDefinition for a list](../api/list-post-columns.md)|[columnDefinition](../resources/columndefinition.md)|Create a new [columnDefinition](../resources/columndefinition.md) object in a [list](../resources/list.md).|
|[Create columnDefinition for a content type](../api/contenttype-post-columns.md)|[columnDefinition](../resources/columndefinition.md)|Create a new [columnDefinition](../resources/columndefinition.md) object in a [content type](../resources/contenttype.md).|
|[Get columnDefinition](../api/columndefinition-get.md)|[columnDefinition](../resources/columndefinition.md)|Read the properties and relationships of a [columnDefinition](../resources/columndefinition.md) object.|
|[Update columnDefinition](../api/columndefinition-update.md)|[columnDefinition](../resources/columndefinition.md)|Update the properties of a [columnDefinition](../resources/columndefinition.md) object.|
|[Delete columnDefinition](../api/columndefinition-delete.md)|None|Deletes a [columnDefinition](../resources/columndefinition.md) object.|

## JSON representation

Here is a JSON representation of a columnDefinition resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.columnDefinition"
}-->

```json
{
  "columnGroup": "string",
  "description": "description",
  "displayName": "friendly name",
  "enforceUniqueValues": true,
  "hidden": false,
  "id": "string",
  "indexed": true,
  "name": "staticNameForApi",
  "readOnly": false,
  "required": false,
  "boolean": { "@odata.type": "microsoft.graph.booleanColumn" },
  "calculated": { "@odata.type": "microsoft.graph.calculatedColumn" },
  "choice": { "@odata.type": "microsoft.graph.choiceColumn" },
  "currency": { "@odata.type": "microsoft.graph.currencyColumn" },
  "dateTime": { "@odata.type": "microsoft.graph.dateTimeColumn" },
  "defaultValue": { "@odata.type": "microsoft.graph.defaultColumnValue" },
  "geolocation": { "@odata.type": "microsoft.graph.geolocationColumn" },
  "lookup": { "@odata.type": "microsoft.graph.lookupColumn" },
  "number": { "@odata.type": "microsoft.graph.numberColumn" },
  "personOrGroup": { "@odata.type": "microsoft.graph.personOrGroupColumn" },
  "text": { "@odata.type": "microsoft.graph.textColumn" },
  "isDeletable" : false,
  "propagateChanges": false,
  "isReorderable": false,
  "isSealed": false,
  "validation": { "@odata.type": "microsoft.graph.columnValidation" },
  "hyperlinkOrPicture": { "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn" },
  "term": { "@odata.type": "microsoft.graph.termColumn" },
  "sourceContentType": { "@odata.type": "microsoft.graph.contentTypeInfo" },
  "thumbnail": { "@odata.type": "microsoft.graph.thumbnailColumn" },
  "type": { "@odata.type": "microsoft.graph.columnTypes" },
  "contentApprovalStatus": { "@odata.type": "microsoft.graph.contentApprovalStatusColumn" }
}
```

## Properties

Columns can hold data of various types.
The following properties indicate what type of data a column stores, as well as additional settings for that data.
The type-related properties (boolean, calculated, choice, currency, dateTime, lookup, number, personOrGroup, text) are mutually exclusive -- a column can only have one of them specified.

| Property name           | Type    | Description
|:------------------------|:--------|:-----------------------------------------
| **columnGroup**         | string  | For site columns, the name of the group this column belongs to. Helps organize related columns.
| **description**         | string  | The user-facing description of the column.
| **displayName**         | string  | The user-facing name of the column.
| **enforceUniqueValues** | Boolean | If true, no two list items may have the same value for this column.
| **hidden**              | Boolean | Specifies whether the column is displayed in the user interface.
| **id**                  | string  | The unique identifier for the column.
| **indexed**             | Boolean | Specifies whether the column values can used for sorting and searching.
| **name**                | string  | The API-facing name of the column as it appears in the [fields][] on a [listItem][]. For the user-facing name, see **displayName**.
| **readOnly**            | Boolean    | Specifies whether the column values can be modified.
| **required**            | Boolean | Specifies whether the column value is not optional.
| **boolean**       | [booleanColumn][]       | This column stores boolean values.
| **calculated**    | [calculatedColumn][]    | This column's data is calculated based on other columns.
| **choice**        | [choiceColumn][]        | This column stores data from a list of choices.
| **currency**      | [currencyColumn][]      | This column stores currency values.
| **dateTime**      | [dateTimeColumn][]      | This column stores DateTime values.
| **defaultValue**  | [defaultColumnValue][]  | The default value for this column.
| **geolocation**   | [geolocationColumn][]   | This column stores a geolocation.
| **lookup**        | [lookupColumn][]        | This column's data is looked up from another source in the site.
| **number**        | [numberColumn][]        | This column stores number values.
| **personOrGroup** | [personOrGroupColumn][] | This column stores Person or Group values.
| **text**          | [textColumn][]          | This column stores text values.
| **isDeletable**       | Boolean | Indicates whether this column can be deleted.
| **propagateChanges**     | Boolean | If 'True' changes to this column will be propagated to lists that implement the column. 
| **isReorderable**         | Boolean | Indicates whether values in the column can be reordered. Read-only.
| **isSealed**              | Boolean | Specifies whether column can be changed.
| **validation**   |  [columnValidation][]    | This column stores validation formula and message for the column. 
| **hyperlinkOrPicture**  | [hyperlinkOrPictureColumn][] | This column stores hyperlink or picture values. 
| **term**     | [termColumn][] | This column stores taxonomy terms.
| **sourceContentType**   |[contentTypeInfo][]  | ContentType from which this column is inherited from. Used only while fetching contentTypes columns.
| **thumbnail**           |[thumbnailColumn][]      | This column stores thumbnail values.
| **type**         | columnTypes  | For site columns, the type of column. Read-only
| **contentApprovalStatus**| [contentApprovalStatusColumn][]     | This column stores content approval status.

## Relationships

| Property name   | Type                      | Description
|:----------------|:--------------------------|:-------------------------------
| **sourceColumn** | [columnDefinition][] | The source column for content type column.

>**Note:** These properties correspond to SharePoint's [SPFieldType][] enumeration.
While the most common field types are represented in the previous table, this beta API is still missing some.
In those cases, none of the column type facets will be populated, and the column will only have its basic properties.

## Remarks

ColumnDefinitions and field values for `hidden` columns are not shown by default.
To see them when listing **columnDefinitions**, include `hidden` in your `$select` statement.
To see them when showing **field** values on [listItems][listItem], include the desired columns by name in your `$select` statement.

[booleanColumn]: booleancolumn.md
[calculatedColumn]: calculatedcolumn.md
[choiceColumn]: choicecolumn.md
[columnDefinition]: columnDefinition.md
[contentType]: contenttype.md
[currencyColumn]: currencycolumn.md
[dateTimeColumn]: datetimecolumn.md
[defaultColumnValue]: defaultcolumnvalue.md
[geolocationColumn]: geolocationcolumn.md
[list]: list.md
[lookupColumn]: lookupcolumn.md
[numberColumn]: numbercolumn.md
[personOrGroupColumn]: personorgroupcolumn.md
[site]: site.md
[textColumn]: textcolumn.md
[fieldValueSet]: fieldvalueset.md
[fields]: fieldvalueset.md
[listItem]: listitem.md
[termColumn]: termColumn.md
[contentApprovalStatusColumn]: contentApprovalStatusColumn.md
[thumbnailColumn]: thumbnailColumn.md
[hyperlinkOrPictureColumn]: hyperlinkOrPictureColumn.md
[columnValidation]: columnValidation.md
[contentTypeInfo]: contentTypeInfo.md

[SPFieldType]: /previous-versions/office/sharepoint-server/ms428806(v=office.15)

<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ColumnDefinition",
  "suppressions": []
}
-->