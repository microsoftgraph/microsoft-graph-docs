# inferenceClassification resource type

Classification of a user's messages to enable focus on those that are more relevant or important to the user. 

For more information, see [Manage Focused Inbox](manage_focused_inbox.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create inferenceClassificationOverride](../api/inferenceclassification_post_overrides.md) |[inferenceClassificationOverride](inferenceclassificationoverride.md)| Create an override for a sender identified by an SMTP address. Future messages from that SMTP address will be consistently classified as specified in the override.|
|[List overrides](../api/inferenceclassification_list_overrides.md) |[inferenceClassificationOverride](inferenceclassificationoverride.md) collection| Get the overrides that a user has set up to always classify messages from certain senders in specific ways.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|string| Read-only.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|overrides|[inferenceClassificationOverride](inferenceclassificationoverride.md) collection| A set of overrides for a user to always classify messages from specific senders in certain ways: `focused`, or `other`. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.inferenceClassification",
  "@odata.annotations": [
    {
      "property": "overrides",
      "capabilities": {
        "changeTracking": false,
        "expandable": false,
        "searchable": false
      }
    }
  ]
}-->

```json
{
  "id": "string (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "inferenceClassification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->