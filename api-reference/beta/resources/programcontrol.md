---
title: "programControl resource type"
description: "In the Azure AD access reviews feature, the program control object represents a control, linking an access review to a program."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "markwahl-msft"
---

# programControl resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In the Azure AD [access reviews](accessreviews-root.md) feature, the program control object represents a control, linking an access review to a program.


## Methods

| Method | Return Type | Description |
|:------ |:----------- |:----------- |
| [Create programControl](../api/programcontrol-create.md) |	[programControl](programcontrol.md)	|	Add a programControl to a program. |
| [Delete programControl](../api/programcontrol-delete.md) | None. | Remove a programControl from a program. |
| [List programControls](../api/programcontrol-list.md) | [programControl](programcontrol.md) collection | List controls across all programs in the tenant. |
| [List programControls of a program](../api/program-listcontrols.md) | [programControl](programcontrol.md) collection |	Get a collection of the controls of a program. |
| [List programControlTypes](../api/programcontroltype-list.md) | [programControlType](programcontroltype.md) collection| List program control types. |

## Properties

| Property | Type	| Description |
|:-------- |:---- |:----------- |
| id | String | The feature-assigned identifier of the link between program and control. |
| programId | String | The programId of the program this control is a part of. Required on create. |
| controlId | String | The controlId of the control, in particular the identifier of an access review. Required on create. |
| controlTypeId | String | The programControlType identifies the type of program control - for example, a control linking to guest access reviews. Required on create. |
| displayName | String | The name of the control. |
| status | String | The life cycle status of the control. |
| createdDateTime | DateTimeOffset | The creation date and time of the program control. |
| owner | [userIdentity](useridentity.md) | The user who created the program control. |
| resource | [programResource](programresource.md) | The resource, a group or an app, targeted by this program control's access review. |

## Relationships

| Relationship | Type	| Description |
|:------------ |:---- |:----------- |
| program | [program](program.md) | The program this control is part of. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
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
 "owner": {"@odata.type":"microsoft.graph.userIdentity"},
 "resource":{"@odata.type":"microsoft.graph.programResource"}
}
```
<!--
{
  "type": "#page.annotation",
  "description": "programControl resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


