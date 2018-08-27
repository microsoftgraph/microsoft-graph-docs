---
author: rgregg
ms.author: rgregg
ms.date: 09/11/2017
title: ListInfo
---
# ListInfo resource

The **listInfo** complex type provides additional information about a [list][].

[list]: list.md

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],
  "@odata.type": "microsoft.graph.listInfo"
}-->

```json
{
  "contentTypesEnabled": false,
  "hidden": false,
  "template": "documentLibrary | genericList | tasks | survey | links | announcements | contacts | ..."
}
```

## Properties

| Property name           | Type    | Description
|:------------------------|:--------|:------------------------------------------------
| **contentTypesEnabled** | Boolean | If `true`, indicates that content types are enabled for this list.
| **hidden**              | Boolean | If `true`, indicates that the list is not normally visible in the SharePoint user experience.
| **template**            | String  | An enumerated value that represents the base list template used in creating the list. Possible values include `documentLibrary`, `genericList`, `task`, `survey`, `announcements`, `contacts`, and more.

### Remarks

While most lists created by users will have one of the values listed above, other values are possible as well.
Your app should be prepared to handle any values that are not listed here.
For developers familiar with SharePoint's CSOM APIs, the `template` value corresponds to the `SPListTemplateType` enumeration.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/listinfo.md:
      Found potential enums in resource example that weren't defined in a table:(documentLibrary,genericList,tasks,survey,links,announcements,contacts,...) are in resource, but () are in table"
  ],
  "tocPath": ""
}-->
