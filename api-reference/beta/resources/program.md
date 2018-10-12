# program resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

In the Azure AD [access reviews](accessreviews_root.md) feature, a program is a container, holding program controls. A tenant can have one or more programs.  Each control links an access review to a program, to make it easier to locate related access reviews.  

Each tenant that has on-boarded Azure AD access reviews has one program, `Default program`.  A global administrator can create additional programs, for example to represent compliance initiatives. 


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create program](../api/program_create.md) |	[program](program.md)	|	Create a new program.|
|[Delete program](../api/program_delete.md) |	None.	|	Delete a program.|
|[List programs](../api/program_list.md) |	[program](program.md) collection|	Get a collection of all the programs.|
|[List programControls of a program](../api/program_listcontrols.md) |		[programControl](programcontrol.md) collection|	Get a collection of the controls of a program.|
|[Update program](../api/program_update.md) |	[program](program.md)|	Update a program.|

## Permissions

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | ProgramControl.Read.All, ProgramControl.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `id`                        |`String`                              |  The feature-assigned identifier of the program.                    |
| `displayName`               |`String`                              |  The name of the program.  Required on create.                  |
| `description`               |`String`                              |  The description of the program.           |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `controls`                  |[programControl](programcontrol.md) | Controls associated with the program. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.program"
}-->

```json
{
 "id": "string (identifier)",
 "displayName": "string",
 "description": "string"
}

```

<!-- {
  "type": "#page.annotation",
  "description": "program resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->