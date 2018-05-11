# userIdentity resource type
Indicates the User information that initiated or was changed as part of an audit activity.



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String| indicates the Display Name of the User|
|id|String|Indicates the User Id of the user|
|ipAddress|String|Indicates the client IP address used by user performing the activity|
|userPrincipalName|String|Indicates the UPN of the user|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userIdentity"
}-->

```json
{
  "displayName": "String",
  "id": "String",
  "ipAddress": "String",
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->