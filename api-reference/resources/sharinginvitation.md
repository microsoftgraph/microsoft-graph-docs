# sharingInvitation resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|email|string||
|invitedBy|[identitySet](identityset.md)||
|redeemedBy|string||
|signInRequired|boolean||

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharinginvitation"
}-->

```json
{
  "email": "string",
  "invitedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "redeemedBy": "string",
  "signInRequired": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "sharingInvitation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->