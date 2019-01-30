---
title: "programControlType resource type"
description: "In the Azure AD access reviews feature, the program control type is used when associating a control to a program, to indicate the type of access review the control is for.  "
localization_priority: Normal
---

# programControlType resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](accessreviews-root.md) feature, the program control type is used when associating a control to a program, to indicate the type of access review the control is for.  

The program control type objects are automatically generated when the global administrator onboards the tenant to use the access reviews feature.  No additional program control types can be created.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List programControlTypes](../api/programcontroltype-list.md) | [programControlType](programcontroltype.md) collection| List program control types. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `id`                     |`String`                | The feature-assigned identifier of the program control type                                      |
| `displayName`            |`String`                | The name of the program control type                                                             |


## Relationships

None.


## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create programControl](../api/programcontrol-create.md) |		[programControl](programcontrol.md)	|	Add a programControl to a program.|


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.programControlType"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string"
}

```

<!--
{
  "type": "#page.annotation",
  "description": "programControlType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/programcontroltype.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
