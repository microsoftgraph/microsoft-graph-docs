# educationMakeCodeResource resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A subclass of [educationResource](educationresource.md). This resource type represents a MakeCode resource.  

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|hostWebUrl|String|Base URL of the hosting MakeCode resource.|
|projectId|String|Unique ID of the makecode project. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationMaekCodeResource"
}-->

```json
{
  "hostWebUrl": "String",
  "projectId": "String"
}

```

<!-- uuid: 23593ab5-ff80-4caa-af80-84352dae1f77
2019-09-24 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationMakeCodeResource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->