---
author: JeremyKelley
ms.author: JeremyKelley
ms.date: 09/11/2017
title: ColumnDefinition
localization_priority: Normal
description: "Here is a JSON representation of a ColumnDefinition resource."
ms.prod: ""
doc_type: resourcePageType
---
# ColumnDefinition resource

Namespace: microsoft.graph

## JSON representation

Here is a JSON representation of a ColumnDefinition resource.

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
  "enforceUniqueValues": "true",
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
  "text": { "@odata.type": "microsoft.graph.textColumn" }
}
```

## Properties

The **columnDefinition** resource has the following properties.

| Property name           | Type    | Description
|:------------------------|:--------|:-----------------------------------------
| **columnGroup**         | string  | For site columns, the name of the group this column belongs to. Helps organize related columns.
| **description**         | string  | The user-facing description of the column.
| **displayName**         | string  | The user-facing name of the column.
| **enforceUniqueValues** | boolean | If true, no two list items may have the same value for this column.
| **hidden**              | boolean | Specifies whether the column is displayed in the user interface.
| **id**                  | string  | The unique identifier for the column.
| **indexed**             | boolean | Specifies whether the column values can used for sorting and searching.
| **name**                | string  | The API-facing name of the column as it appears in the [fields][] on a [listItem][]. For the user-facing name, see **displayName**.
| **readOnly**            | bool    | Specifies whether the column values can be modified.
| **required**            | boolean | Specifies whether the column value is not optional.

Columns can hold data of various types.
The following properties indicate what type of data a column stores, as well as additional settings for that data.
These properties are mutually exclusive -- a column can only have one of them specified.

| Property name     | Type                    | Description
|:------------------|:------------------------|:-------------------------------
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

Note: These properties correspond to SharePoint's [SPFieldType][] enumeration.
While the most common field types are represented above, this API is still missing some.
In those cases, none of the column type facets will be populated, and the column will only have its basic properties.

## Remarks

ColumnDefinitions and field values for `hidden` columns are not shown by default.
To see them when listing **columnDefinitions**, include `hidden` in your `$select` statement.
To see them when showing **field** values on [listItems][listItem], include the desired columns by name in your `$select` statement.

[booleanColumn]: booleancolumn.md
[calculatedColumn]: calculatedcolumn.md
[choiceColumn]: choicecolumn.md
[currencyColumn]: currencycolumn.md
[dateTimeColumn]: datetimecolumn.md
[defaultColumnValue]: defaultcolumnvalue.md
[geolocationColumn]: geolocationcolumn.md
[lookupColumn]: lookupcolumn.md
[numberColumn]: numbercolumn.md
[personOrGroupColumn]: personorgroupcolumn.md
[textColumn]: textcolumn.md
[fieldValueSet]: fieldvalueset.md
[fields]: fieldvalueset.md
[listItem]: listitem.md

[SPFieldType]: /previous-versions/office/sharepoint-server/ms428806(v=office.15)

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ColumnDefinition"
} -->