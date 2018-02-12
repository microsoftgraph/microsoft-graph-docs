# educationOrganization resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Abstract entity used to model the commonality between different organization types within the education sector.  

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String| Organization description.|
|displayName|String| Organization display name.|
|externalSource|string| Source where this organization was created from. Possible values are: `sis`, `manual`, `unknownFutureValue`.|

## Relationships
None.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationOrganization"
}-->

```json
{
  "description": "String",
  "displayName": "String",
  "externalSource": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "educationOrganization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->