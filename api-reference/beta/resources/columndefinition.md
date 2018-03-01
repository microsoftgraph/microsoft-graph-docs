---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: ColumnDefinition
---
# ColumnDefinition resource

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## JSON representation

Here is a JSON representation of a ColumnDefinition resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.columnDefinition",
       "keyProperty": "id", "optionalProperties": [ ] } -->

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
| **lookup**        | [lookupColumn][]        | This column's data is looked up from another source in the site.
| **number**        | [numberColumn][]        | This column stores number values.
| **personOrGroup** | [personOrGroupColumn][] | This column stores Person or Group values.
| **text**          | [textColumn][]          | This column stores text values.

Note: These properties correspond to SharePoint's [SPFieldType][] enumeration.
While the most common field types are represented above, this beta API is still missing some.
In those cases, none of the column type facets will be populated, and the column will only have its basic properties.

[booleanColumn]: booleanColumn.md
[calculatedColumn]: calculatedColumn.md
[choiceColumn]: choiceColumn.md
[currencyColumn]: currencyColumn.md
[dateTimeColumn]: dateTimeColumn.md
[defaultColumnValue]: defaultColumnValue.md
[lookupColumn]: lookupColumn.md
[numberColumn]: numberColumn.md
[personOrGroupColumn]: personOrGroupColumn.md
[textColumn]: textColumn.md
[fieldValueSet]: fieldValueSet.md
[fields]: fieldvalueset.md
[listItem]: listitem.md

[SPFieldType]: https://msdn.microsoft.com/en-us/library/microsoft.sharepoint.spfieldtype.aspx

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Resources/ColumnDefinition"
} -->
