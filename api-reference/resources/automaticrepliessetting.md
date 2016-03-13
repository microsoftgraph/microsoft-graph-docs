# automaticRepliesSetting resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|externalAudience|String| Possible values are: `none`, `contactsOnly`, `all`.|
|externalReplyMessage|string||
|internalReplyMessage|string||
|scheduledEndDateTime|[dateTimeTimeZone](datetimetimezone.md)||
|scheduledStartDateTime|[dateTimeTimeZone](datetimetimezone.md)||
|status|String| Possible values are: `disabled`, `alwaysEnabled`, `scheduled`.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.automaticrepliessetting"
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
  "tocPath": ""
}-->