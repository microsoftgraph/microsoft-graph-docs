# activityGroupState resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains stateful information about the activity group.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|aliases|String collection|[STIX 2.0 standard](https://oasis-open.github.io/cti-documentation/stix/intro) list of aliases for the activity group.|
|name|String|[STIX 2.0 standard](https://oasis-open.github.io/cti-documentation/stix/intro) display name for the activity group.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.activityGroupState"
}-->

```json
{
  "aliases": ["String"],
  "name": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "activityGroupState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->