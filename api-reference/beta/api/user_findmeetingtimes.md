# user: findMeetingTimes
Find meeting time suggestions based on organizer and attendee availability, and time or location constraints specified as parameters.

If **findMeetingTimes** cannot return any meeting suggestions, the response would indicate a reason in the **emptySuggestionsHint** property. 
Based on this value, you can better adjust the parameters and call **findMeetingTimes** again.

**Note**

Currently, **findMeetingTimes** assumes the following:

- Any [attendee](../resources/attendee.md) who is a person (as opposed to a resource) is a required attendee. So, specify `required` for a person 
and `resource` for a resource in the corresponding **type** property, as part of the **attendees** collection parameter.
- Any meeting suggestion occurs during only the work hours of the organizer or an attendee. You can ignore specifying the **activityDomain** property of a 
[timeConstraint](../resources/timeConstraint.md). 


### Prerequisites
The following **scopes** are required to execute this API: *Calendars.Read*
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/findMeetingTimes
POST /users/<id|userPrincipalName>/findMeetingTimes
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <code>|


### Request body
All the supported parameters are listed below. Depending on your scenario, specify a JSON object for each of the necessary parameters in the request body. 
Based on the specified parameters,**findMeetingTimes** checks the free/busy status in the primary calendars of the organizer and attendees. The action 
calculates the best possible meeting times, and returns any meeting suggestions.


| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|attendees|[attendeeBase](../resources/attendeebase.md) collection|A collection of attendees or resources for the meeting. An empty collection causes **findMeetingTimes** to look for free time slots for only the organizer.|
|locationConstraint|[locationConstraint](../resources/locationconstraint.md)|The organizer's requirements about the meeting location, such as whether a suggestion for a meeting location is required, or there are specific locations only where the meeting can take place.|
|timeConstraint|[timeConstraint](../resources/timeconstraint.md)|The start and end time range in which the meeting should occur.|
|meetingDuration|Edm.Duration|The length of the meeting, denoted in [ISO8601](http://www.iso.org/iso/iso8601) format. For example, 1 hour is denoted as 'PT1H', where 'P' is the duration designator, 'T' is the time designator, 'H' is the hour designator. If no meeting duration is specified, **findMeetingTimes** uses the default of 30 minutes. |
|maxCandidates|Edm.Int32|The maximum number of meeting time suggestions to be returned.|
|isOrganizerOptional|Edm.Boolean|`True` if the organizer's attendance is not necessary, `false` otherwise.|
|returnSuggestionHints|Edm.Boolean|`True` to return a reason for each meeting suggestion in the **suggestionHint** property. The default is `false` to not return that property.|

### Response
If successful, this method returns `200, OK` response code and a [meetingTimeCandidatesResult](../resources/meetingtimecandidatesresult.md) in the response body. 

A **meetingTimeCandidatesResult** includes a collection of meeting suggestions and an **emptySuggestionsHint** property. Each suggestion is defined 
as a [meetingTimeCandidate](../resources/meetingtimecandidate.md), with attendees having on the average a confidence level of 50% chance or higher to attend. 

By default, each meeting time suggestion is returned in UTC. 

### Example

The following example shows how to find time to meet at a pre-determined location, and request a reason for each suggestion, by specifying the following parameters in the request body:
- **attendees**
- **locationConstraint**
- **timeConstraint**
- **meetingDuration**
- **returnSuggestionHints**

By setting the **returnSuggestionHints** parameter, you also get an explanation in the **suggestionHint** property for each suggestion, if **findMeetingTimes** returns any suggestion.

##### Request
Here is the example request.
<!-- {
  "blockType": "request",
  "name": "user_findmeetingtimes"
}-->
```http
POST https://graph.microsoft.com/beta/me/findMeetingTimes


{ 
  "attendees": [ 
    { 
      "type": "required",  
      "emailAddress": { 
        "address": "alexd@contoso.onmicrosoft.com" 
      } 
    } 
  ],  
  "locationConstraint": { 
    "isRequired": "false",  
    "suggestLocation": "false",  
    "locations": [ 
      { 
        "displayName": "Conf room Hood" 
      } 
    ] 
  },  
  "timeConstraint": { 
    "timeslots": [ 
      { 
        "start": { 
          "date": "2016-06-20",  
          "time": "7:00:00",  
          "timeZone": "Pacific Standard Time" 
        },  
        "end": { 
          "date": "2016-06-20",  
          "time": "17:00:00",  
          "timeZone": "Pacific Standard Time" 
        } 
      } 
    ] 
  },  
  "meetingDuration": "PT2H",
  "returnSuggestionHints": "true"
}
```

##### Response
Here is an example response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.meetingTimeCandidatesResult",
  "isCollection": false
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json


{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#microsoft.graph.meetingTimeCandidatesResult",
   "meetingTimeSlots":[
      {
         "meetingTimeSlot":{
            "start":{
               "date":"2016-06-20",
               "time":"11:00:00.0000000",
               "timeZone":"UTC"
            },
            "end":{
               "date":"2016-06-20",
               "time":"13:00:00.0000000",
               "timeZone":"UTC"
            }
         },
         "confidence":100,
         "organizerAvailability":"free",
         "attendeeAvailability":[
            {
               "attendee":{
                  "type":"required",
                  "emailAddress":{
                     "address":"alexd@contoso.onmicrosoft.com"
                  }
               },
               "availability":"free"
            }
         ],
         "locations":[
            {
               "displayName":"Conf room Hood"
            }
         ],
         "suggestionHint":"Suggested because it is one of the nearest times when all attendees are available."
      },
      {
         "meetingTimeSlot":{
            "start":{
               "date":"2016-06-20",
               "time":"15:00:00.0000000",
               "timeZone":"UTC"
            },
            "end":{
               "date":"2016-06-20",
               "time":"17:00:00.0000000",
               "timeZone":"UTC"
            }
         },
         "confidence":100,
         "organizerAvailability":"free",
         "attendeeAvailability":[
            {
               "attendee":{
                  "type":"required",
                  "emailAddress":{
                     "address":"alexd@contoso.onmicrosoft.com"
                  }
               },
               "availability":"free"
            }
         ],
         "locations":[
            {
               "displayName":"Conf room Hood"
            }
         ],
         "suggestionHint":"Suggested because it is one of the nearest times when all attendees are available."
      }
   ],
   "emptySuggestionsHint":""
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "user: findMeetingTimes",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->