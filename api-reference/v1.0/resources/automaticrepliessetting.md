# automaticRepliesSetting resource type

Configuration settings to automatically notify the sender of an incoming email with a message from the 
signed-in user. For example, an automatic reply to notify that the signed-in user is unavailable to 
respond to emails. 


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|externalAudience|externalAudienceScope| The set of audience external to the signed-in user's organization who will receive the **ExternalReplyMessage**, if **Status** is `AlwaysEnabled` or `Scheduled`. Possible values are: `none`, `contactsOnly`, `all`.|
|externalReplyMessage|string|The automatic reply to send to the specified external audience, if **Status** is `AlwaysEnabled` or `Scheduled`.|
|internalReplyMessage|string|The automatic reply to send to the audience internal to the signed-in user's organization, if **Status** is `AlwaysEnabled` or `Scheduled`. |
|scheduledEndDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date and time that automatic replies are set to end, if **Status** is set to `Scheduled`. |
|scheduledStartDateTime|[dateTimeTimeZone](datetimetimezone.md)|The date and time that automatic replies are set to begin, if **Status** is set to `Scheduled`.|
|status|automaticRepliesStatus|Configurations status for automatic replies. Possible values are: `disabled`, `alwaysEnabled`, `scheduled`.|

### externalAudienceScope values

| Value
|:-------------------------
| none
| contactsOnly
| all


### automaticRepliesStatus values

| Value
|:-------------------------
| disabled
| alwaysEnabled
| scheduled


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.automaticRepliesSetting"
}-->

```json
{
  "externalAudience": "String",
  "externalReplyMessage": "string",
  "internalReplyMessage": "string",
  "scheduledEndDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "scheduledStartDateTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "status": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "automaticRepliesSetting resource",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/automaticrepliessetting.md/externalReplyMessage:
      Found potential enums in parameter description declared as a string: (AlwaysEnabled,Scheduled) are in enum automaticRepliesStatus",
    "Warning: /api-reference/v1.0/resources/automaticrepliessetting.md/internalReplyMessage:
      Found potential enums in parameter description declared as a string: (AlwaysEnabled,Scheduled) are in enum automaticRepliesStatus"
  ],
  "tocPath": ""
}-->
