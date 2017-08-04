# openWithApp resource type

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openwithapp"
}-->

```json
{
  "app": {"@odata.type": "microsoft.graph.identity"},
  "editPostParameters": "string",
  "editUrl": "string",
  "viewPostParameters": "string",
  "viewUrl": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|app|[identity](identity.md)||
|editPostParameters|String||
|editUrl|String||
|viewPostParameters|String||
|viewUrl|String||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openWithApp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->