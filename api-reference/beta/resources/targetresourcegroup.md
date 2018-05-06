# targetResourceGroup resource type
Indicates the type of group that was impacted due to the audit activity. Includes values like unified groups versus Azure AD 



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|groupType|String| Possible values are: `unifiedGroups`, `azureAD`, `unknownFutureValue`.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResourceGroup"
}-->

```json
{
  "groupType": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResourceGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->