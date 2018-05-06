# targetResourcePolicy resource type
Indicates the policy that was impacted by the audit activity. Derived from the [targetResource](targetresource.md) resource.   



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|policyType|String|Indicates the Policy Name that changed or was targetted for change|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResourcePolicy"
}-->

```json
{
  "policyType": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResourcePolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->