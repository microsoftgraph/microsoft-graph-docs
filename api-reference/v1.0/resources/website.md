# website resource type

Represents a website.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|type|websiteType| Possible values are: `other`, `home`, `work`, `blog`, `profile`.|
|address|string|The URL of the website.|
|displayName|string|The display name of the web site.|

### websiteType values

| Value
|:-------------------------
| other
| home
| work
| blog
| profile


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.website"
}-->

```json
{
  "type": "String",
  "address": "string",
  "displayName": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "webSite resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
