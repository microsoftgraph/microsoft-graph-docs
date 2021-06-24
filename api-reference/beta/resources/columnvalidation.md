---
author: swapnil1993
title: "columnValidation resource type"
description: "Contains data for validating column values."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---

# columnValidation resource type

Namespace: microsoft.graph
[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Contains metadata for validating the column.


## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| **formula**    | string  | The formula to validate column value. For examples, see [Examples of common formulas in lists](https://support.microsoft.com/office/examples-of-common-formulas-in-sharepoint-lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3) 
| **descriptions**    | Collection(microsoft.graph.displayNameLocalization)  | Localized messages that explain what is needed for this column's value to be considered valid. User will be prompted with this message if validation fails. 
| **defaultLanguage**    | string  | Default BCP 47 language tag for the description.

SharePoint formulas use a syntax similar to Excel formulas.
See [Examples of common formulas in SharePoint Lists][SPFormulas] for more information.

## JSON representation

The following is a JSON representation of a **columnValidation** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.columnValidation"} -->

```json
{
  "formula": "string",
  "descriptions": [{ "@type": "microsoft.graph.displayNameLocalization" }],
  "defaultLanguage": "string"
}
```

[SPFormulas]: https://support.office.com/article/Examples-of-common-formulas-in-SharePoint-Lists-d81f5f21-2b4e-45ce-b170-bf7ebf6988b3
