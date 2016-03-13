# attendeeAvailability resource type




### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|attendee|[attendeeBase](attendeebase.md)||
|availability|String| Possible values are: `free`, `tentative`, `busy`, `oof`, `workingElsewhere`, `unknown`.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendeeavailability"
}-->

```json
{
  "attendee": {"@odata.type": "microsoft.graph.attendeeBase"},
  "availability": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attendeeAvailability resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->