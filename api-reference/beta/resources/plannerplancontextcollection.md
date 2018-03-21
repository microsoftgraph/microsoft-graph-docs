# plannerPlanContextCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.


The **plannerPlanContextCollection** resource represents the collection of external contexts to which a plan is linked. This resource is an open type and is part of the [plannerPlan](plannerPlan.md) object. The value in the property-value pair is the [plannerPlanContext](plannerPlanContext.md) object.


## Properties
You can define the properties of this open type. The property values should be distinctive identifier that represents the external context as the property name. 
The property values must be [plannerPlanContext](plannerPlanContext.md) objects. Based on OData requirements, property names in open types cannot contain the following characters: `.`, `:`, `%`, `@`. These characters need to be encoded using URL encoding. To remove an item in the favorites list, set the value of the property to `null`.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlanContextCollection"
}-->

```json
{
  "48#19%3Ad128c63941b24733951ea7defd81e550%40thread%2Eskype19%3Ad128c63941b24733951ea7defd81e550%40thread%2Eskype": {
    "@odata.type": "#microsoft.graph.plannerPlanContext",
    "associationType": "Board",
    "createdDateTime": "2015-10-14T00:57:28.4698344Z",
    "displayNameSegments": [
        "Finance Team",
        "Budget Plans"
    ],
    "ownerAppId": "5e3ce6c0-2b1f-4285-8d4b-75ee78787346"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlanContextCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
