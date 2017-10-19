# resourceAccess resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Specifies an OAuth 2.0 permission scope or an app role that an application requires. The **resourceAccess** property of the [requiredResourceAccess](requiredResourceAccess.md) type is a collection of **ResourceAccess**.


## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.resourceAccess"
}-->

```json
{
  "id": "guid",
  "type": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|Guid|The unique identifier for one of the [oAuth2Permission](oauth2permission.md) or [appRole](approle.md) instances that the resource application exposes.|
|type|String|Specifies whether the **id** property references an [oAuth2Permission](oauth2permission.md) or an [appRole](approle.md). Possible values are "scope" or "role".|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "resourceAccess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
