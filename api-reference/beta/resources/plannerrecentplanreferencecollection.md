# plannerRecentPlanReferenceCollection resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The **plannerRecentPlanReferenceCollection** resource represents the collection of references to plans that were recently viewed by a user. This resource is an open type and is part of the [plannerUser](plannerUser.md) object. The property name is the ID of the corresponding plan. The value in the property-value pair is the [plannerRecentPlanReference](plannerRecentPlanReference.md) object.
Adding new references to this collection will automatically remove the oldest entries when the size of the collection exceeds a predetermined maximum value.


## Properties
You can define the properties of this open type. The property names are `id` values of [plannerPlan](plannerPlan.md) resources and their values must be [plannerRecentPlanReference](plannerRecentPlanReference.md) objects. To remove an item in the favorites list, set the value of the property to `null`.


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerRecentPlanReferenceCollection"
}-->

```json
{
  "7oTB5aMIAE2rVo-1N-L7RmQAGX2q": {
    "@odata.type": "microsoft.graph.plannerRecentPlanReference",
    "lastAccessedDateTime": "2017-12-02T22:49:46.155Z",
    "planTitle": "Purchase Workflow"
  },
  "iKNMHkk3vEWpSF7F7iZWIGQAAMMw": {
    "@odata.type": "microsoft.graph.plannerRecentPlanReference",
    "lastAccessedDateTime": "2017-12-03T21:59:28.975Z",
    "planTitle": "New Year's Office Party"
  }
}
```



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerRecentPlanReferenceCollection resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
