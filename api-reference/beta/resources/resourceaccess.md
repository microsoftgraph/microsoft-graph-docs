---
title: "resourceAccess resource type"
description: "Specifies an OAuth 2.0 permission scope or an app role that an application requires. The **resourceAccess** property of the requiredResourceAccess type is a collection of **ResourceAccess**."
localization_priority: Normal
---

# resourceAccess resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies an OAuth 2.0 permission scope or an app role that an application requires. The **resourceAccess** property of the [requiredResourceAccess](requiredresourceaccess.md) type is a collection of **ResourceAccess**.


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
<!--
{
  "type": "#page.annotation",
  "description": "resourceAccess resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/resourceaccess.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
