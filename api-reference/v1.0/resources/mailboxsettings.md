# mailboxSettings resource type

Settings for the primary mailbox of the signed-in user.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|archiveFolder|string|Folder ID of an archive folder for the user.|
|automaticRepliesSetting|[automaticRepliesSetting](automaticrepliessetting.md)|Configuration settings to automatically notify the sender of an incoming email with a message from the signed-in user.|
|language|[localeInfo](localeinfo.md)|The locale information for the user, including the preferred language and country/region.|
|timeZone|string|The default time zone for the user's mailbox.|
|workingHours|[workingHours](workinghours.md)|The days of the week and hours in a specific time zone that the user works.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "archiveFolder"
  ],
  "@odata.type": "microsoft.graph.mailboxSettings"
}-->

```json
{
  "archiveFolder": "string",
  "automaticRepliesSetting": {"@odata.type": "microsoft.graph.automaticRepliesSetting"},
  "language": {"@odata.type": "microsoft.graph.localeInfo"},
  "timeZone": "string",
  "workingHours": {"@odata.type": "microsoft.graph.workingHours"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "mailboxSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->