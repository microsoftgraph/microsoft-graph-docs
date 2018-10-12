# programControlType resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

In the Azure AD [access reviews](accessreviews_root.md) feature, the program control type is used when associating a control to a program, to indicate the type of access review the control is for.  

The program control type objects are automatically generated when the global administrator onboards the tenant to use the access reviews feature.  No additional program control types can be created.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List programControlTypes](../api/programcontroltype_list.md) | [programControlType](programcontroltype.md) collection| List program control types. |

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
|[Create programControl](../api/programcontrol_create.md) |		[programControl](programcontrol.md)	|	Add a programControl to a program.|


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

<!-- {
  "type": "#page.annotation",
  "description": "programControlType resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
