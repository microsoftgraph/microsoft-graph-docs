# programControl resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

In the Azure AD [access reviews](accessreviews_root.md) feature, the program control object represents a control, linking an access review to a program.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create programControl](../api/programcontrol_create.md) |		[programControl](programcontrol.md)	|	Add a programControl to a program.|
|[Delete programControl](../api/programcontrol_delete.md) |		None.	|	Remove a programControl from a program.|
|[List programControls](../api/programcontrol_list.md) | [programControl](programcontrol.md) collection| List controls across all programs in the tenant.|

## Permissions

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)     | ProgramControl.Read.All, ProgramControl.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported. |
|Application                            | Not supported. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `id`                     |`String`                | The feature-assigned identifier of the link between program and control                                      |
| `programId`              |`String`                | The programId of the program this control is a part of. Required on create.                            |
| `controlId`              |`String`                | The controlId of the control, in particular the identifier of an access review. Required on create.                                                |
| `controlTypeId`          |`String`                | The programControlType identifies the type of program control - for example, a control linking to guest access reviews. Required on create. |
| `displayName`            |`String`                | The name of the control.                                                             |
| `status`                 |`String`                | The life cycle status of the control.                                                 |
| `createdDateTime`        |`DateTimeOffset`        | The creation date and time of the program control.                                        |
| `owner`                  |[userIdentity](useridentity.md)   | The user who created the program control.                                               |
| `resource`               |`programResource`       | The resource, a group or an app, targeted by this program control's access review.                   |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
| `program`                |[program](program.md)               | The program this control is part of.                                                |

## See also

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List programControls of a program](../api/program_listcontrols.md) |		[programControl](programcontrol.md) collection|	Get a collection of the controls of a program.|
|[List programControlTypes](../api/programcontroltype_list.md) | [programControlType](programcontroltype.md) collection| List program control types. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.programControl"
}-->

```json
{
 "id": "string (identifier)",
 "programId": "string (identifier)",
 "controlId": "string (identifier)",
 "controlTypeId": "string (identifier)",
 "displayName": "string",
 "status": "string",
 "createdDateTime": "string (timestamp)",
 "owner": "microsoft.graph.userIdentity",
 "resource":"microsoft.graph.programResource"
}

```

## The programResource complex type

The program resource, contained within a program control object, is a representation of a reference to an object which is the target of the access review.

This type inherits from `microsoft.graph.identity` and has one additional property:

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| `type`               |`String`  | Type of the resource, indicating whether it is a group or an app. |     


<!-- {
  "type": "#page.annotation",
  "description": "programControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->