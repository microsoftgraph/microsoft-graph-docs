# plannerFavoritePlanReferenceCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerFavoritePlanReferenceCollection** resource represents the collection of references to plans that are marked as a favorite by a user. This resource is an open type and is part of the [plannerUser](plannerUser.md) object. The property name in the property-value pair is the ID of the corresponding plan; the value is the [plannerFavoritePlanReference](plannerFavoritePlanReference.md) object.


## Properties
You can define the properties of this open type. The property names are `id` values of [plannerPlan](plannerPlan.md) resources and their values must be [plannerFavoritePlanReference](plannerFavoritePlanReference.md) objects. To remove an item in the favorites list, set the value of the property to `null`.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerFavoritePlanReferenceCollection"
}-->

```json
{
  "jd8S5gOaFk2S8aWCIAJz42QAAxtD": {
    "@odata.type": "microsoft.graph.plannerFavoritePlanReference",
    "orderHint": "8586866870001551087",
    "planTitle": "Customer reviews"
  },
  "uZWtCtli30CGoWLIWSat1mQAC0ai": {
    "@odata.type": "microsoft.graph.plannerFavoritePlanReference",
    "orderHint": "8586848705198093378",
    "planTitle": "Order Management (December 2017)"
  }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerFavoritePlanReferenceCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
