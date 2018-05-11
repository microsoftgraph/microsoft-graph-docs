# auditActivityInitiator resource type
Identity the resource object that initiates the activity. The initiator can be a user, an app or a system (which is considered as an app)



## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|app|[appIdentity](appidentity.md)|If the resource initiating the activity is an app, this property indicates all the app related information like appId, Name, servicePrincipalId, Name.|
|user|[userIdentity](useridentity.md)|If the resource initiating the activity is a user, this property Indicates all the user related information like userId, Name, UserPrinicpalName.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.auditActivityInitiator"
}-->

```json
{
  "app": {"@odata.type": "microsoft.graph.appIdentity"},
  "user": {"@odata.type": "microsoft.graph.userIdentity"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "auditActivityInitiator resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->