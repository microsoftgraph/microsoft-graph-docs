# meetingTimeSuggestionsResult resource type

A collection of meeting suggestions if there is any, or the reason if there isn't.

The following are the possible reasons that [findMeetingTimes](../api/user_findmeetingtimes.md) does not return any meeting suggestions.

|**emptySuggestionsReason value**|**Reasons**|
|:-----|:-----|
| attendeesUnavailable | All of the attendees' availability is known, but not enough attendees are available to reach the [meeting confidence](../api/user_findmeetingtimes.md#the-confidence-of-a-meeting-suggestion) threshold, which is 50% by default, for any time period.|
| attendeesUnavailableOrUnknown | Some or all of the attendees have unknown availability, causing the meeting confidence to fall below the set threshold, which is 50% by default. Attendee availability can become unknown if the attendee is outside of the organization, or there is an error obtaining free/busy information.|
| locationsUnavailable | The **isRequired** property of the [locationConstraint](locationconstraint.md) parameter is specified as mandatory, and yet there are no locations available at the calculated time slots. |
| organizerUnavailable | The **isOrganizerOptional** parameter is false and yet the organizer is not available during the requested time window. |
| unknown | The reason for not returning any meeting suggestions is not known.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.meetingTimeSuggestionsResult"
}-->

```json
{
  "emptySuggestionsReason": "String",
  "meetingTimeSuggestions": [{"@odata.type": "microsoft.graph.meetingTimeSuggestion"}]
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|emptySuggestionsReason|String|A reason for not returning any meeting suggestions. Possible values are: `attendeesUnavailable`, `attendeesUnavailableOrUnknown`, `locationsUnavailable`, `organizerUnavailable`, or `unknown`. This property is an empty string if the **meetingTimeSuggestions** property does include any meeting suggestions.|
|meetingTimeSuggestions|[meetingTimeSuggestion](meetingTimeSuggestion.md) collection|An array of meeting suggestions.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "meetingTimeSuggestionsResult resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->