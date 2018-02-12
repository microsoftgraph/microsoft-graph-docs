# plannerFavoritePlanReference resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerFavoritePlanReference** resource type repesents a reference to a [plannerPlan](plannerPlan.md) that has been marked as a favorite by the user. 
Clients should note that **plannerFavoritePlanReference** entries can reference **plannerPlans** that are deleted, that the user can no longer access, or that have been updated with a different title.

We recommend that clients notify users when there are discrepancies and keep the entries up to date.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|orderHint|String|Hint used to order items of this type in a list view. The format is defined in [Using order hints in Planner](planner_order_hint_format.md).|
|planTitle|String|Title of the plan at the time the user marked it as a favorite.|


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerFavoritePlanReference"
}-->

```json
{
  "orderHint": "String",
  "planTitle": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerFavoritePlanReference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
