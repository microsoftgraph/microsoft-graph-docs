# targetResourceUser resource type
Indicates the user object that was added, updated or deleted by admins as part of audit activity. Derived from the [targetResource](targetresource.md) resource.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|userPrincipalName|String|Indicates the Unique Id of the User. Refers to User Id for a specific user.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.targetResourceUser"
}-->

```json
{
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "targetResourceUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->