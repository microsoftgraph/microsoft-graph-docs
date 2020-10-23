---
title: "Propose new meeting times in Outlook"
description: "In Outlook, a meeting organizer can allow invitees to propose alternative meeting times."
author: "angelgolfer-ms"
localization_priority: Priority
ms.prod: "outlook"
---

# Propose new meeting times in Outlook

In Outlook, a meeting organizer can allow invitees to propose alternative meeting times, if they cannot meet at the original set date/time and accept tentatively or decline. The organizer can accept a proposal by adjusting the meeting time as appropriate.

## Example: attendee responds tentative and suggests a different date/time
The following is an example where Alex invites Adele to lunch, Adele tentatively accepts and proposes an alternative date and time, and Alex accepts the proposal by adjusting the meeting accordingly:

1. As the organizer, Alex sends a meeting request to Adele. He sets the **allowNewTimeProposals** property of the [event](/graph/api/resources/event?view=graph-rest-1.0) to `true` to let Adele suggest another time if she needs to.

    <!-- {
      "blockType": "request",
      "name": "create_event"
    }-->
    ```http
    POST https://graph.microsoft.com/v1.0/me/events
    Prefer: outlook.timezone="Pacific Standard Time"
    Content-type: application/json

    {
      "subject": "Let's go for lunch",
      "body": {
        "contentType": "HTML",
        "content": "Does noon work for you?"
      },
      "start": {
          "dateTime": "2019-08-15T12:00:00",
          "timeZone": "Pacific Standard Time"
      },
      "end": {
          "dateTime": "2019-08-15T14:00:00",
          "timeZone": "Pacific Standard Time"
      },
      "allowNewTimeProposals": true,
      "location":{
          "displayName":"Harry's Bar"
      },
      "attendees": [
        {
          "emailAddress": {
          "address":"AdeleV@contoso.OnMicrosoft.com",
          "name": "Adele Vance"
          },
          "type": "required"
        }
      ]
    }
    ```

    Alex gets the following response: 
    <!-- {
      "blockType": "response",
      "name": "create_event",
      "truncated": true,
      "@odata.type": "microsoft.graph.event"
    } -->
    ```http
    HTTP/1.1 201 Created
    Content-type: application/json

    {
      "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events/$entity",
      "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAAAhBhkg==\"",
      "id": "AAMkADAwJXJGu0AAACEhWOAAA=",
      "createdDateTime": "2019-08-01T06:41:07.805128Z",
      "lastModifiedDateTime": "2019-08-01T06:41:08.3298275Z",
      "changeKey": "NEXywgsVrkeNsFsyVyRrtAAAAhBhkg==",
      "categories": [],
      "originalStartTimeZone": "Pacific Standard Time",
      "originalEndTimeZone": "Pacific Standard Time",
      "uid": "0400000082008A9979A0BD16",
      "reminderMinutesBeforeStart": 15,
      "isReminderOn": true,
      "hasAttachments": false,
      "subject": "Let's go for lunch",
      "bodyPreview": "Does noon work for you?",
      "importance": "normal",
      "sensitivity": "normal",
      "isAllDay": false,
      "isCancelled": false,
      "isOrganizer": true,
      "responseRequested": true,
      "seriesMasterId": null,
      "showAs": "busy",
      "type": "singleInstance",
      "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADAwJXJGu0AAACEhWOAAA%3D&exvsurl=1&path=/calendar/item",
      "onlineMeetingUrl": null,
      "allowNewTimeProposals": true,
      "recurrence": null,
      "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
      },
      "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nDoes late morning work for you?\r\n</body>\r\n</html>\r\n"
      },
      "start": {
        "dateTime": "2019-08-15T12:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "end": {
        "dateTime": "2019-08-15T14:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "location": {
        "displayName": "Harry's Bar",
        "locationType": "default",
        "uniqueId": "Harry's Bar",
        "uniqueIdType": "private"
      },
     "locations": [
        {
            "displayName": "Harry's Bar",
            "locationType": "default",
            "uniqueId": "Harry's Bar",
            "uniqueIdType": "private"
        }
      ],
      "attendees": [
        {
            "type": "required",
            "status": {
                "response": "none",
                "time": "0001-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Adele Vance",
                "address": "AdeleV@contoso.OnMicrosoft.com"
            }
        }
      ],
      "organizer": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@contoso.OnMicrosoft.com"
        }
      }
    }
    ```

2. Adele receives the invitation in her Inbox as an [eventMessageRequest](/graph/api/resources/eventmessagerequest?view=graph-rest-1.0). She notices the **allowNewTimeProposals** property is set. [Using the **event** associated](/graph/api/eventmessage-get?view=graph-rest-1.0#example-2) with this **eventMessageRequest**, she makes a tentative reply and proposes the next day at the same time, in the **proposedNewTime** body parameter. She also sets the **sendResponse** parameter to true.

    <!-- {
      "blockType": "request",
      "name": "event_tentativelyaccept"
    }-->
    ```http
    POST https://graph.microsoft.com/v1.0/me/events/AAMkADU5NRaRqdoI4oeRpAAAB_woNAAA=/tentativelyAccept
    Content-type: application/json

    { 
      "comment": "Can you make the next day instead?", 
      "sendResponse": "true", 
      "proposedNewTime": {
         "Start": { 
              "DateTime": "2019-08-16T12:00:00", 
              "TimeZone": "Pacific Standard Time" 
         }, 
         "End": { 
              "DateTime": "2019-08-16T14:00:00", 
              "TimeZone": "Pacific Standard Time" 
         }
      }
    } 
    ```

    Adele's reply succeeds and she gets the following response:

    <!-- {
      "blockType": "response",
      "name": "event_tentativelyaccept"
      "truncated": true
    } -->
    ```http
    HTTP/1.1 202 Accepted
    ```

3. Alex receives an email of the [eventMessageResponse](/graph/api/resources/eventmessageresponse?view=graph-rest-1.0) type. He notices the following:

   - The subject includes a prefix and says "New Time Proposed: Let's go for lunch"
   - The sender is Adele Vance
   - The **responseType** is `tentativelyAccepted`
   - Adele's proposal is in the **proposedNewTime** property of the **eventMessageResponse**

    <!-- {
      "blockType": "request",
      "name": "get_messages"
    }-->
    ```http
    GET https://graph.microsoft.com/v1.0/me/messages?$top=1
    Prefer: outlook.timezone="Pacific Standard Time"
    ```

    For demonstration purpose, assume Adele's reply is the latest message in Alex' mailbox, and Alex can simply request that latest message.

    <!-- {
      "blockType": "response",
      "name": "get_messages",
      "truncated": true,
      "@odata.type": "microsoft.graph.message",
      "isCollection": true
    } -->
    ```http
    HTTP/1.1 200 OK
    Content-type: application/json
    Preference-Applied: outlook.timezone="Pacific Standard Time"

    {
       "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/messages",
       "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/messages?$top=1&$skip=4"",
       "value": [
          {
            "@odata.type": "#microsoft.graph.eventMessageResponse",
            "@odata.etag": "W/\"DAAAABYAAAA0RfLCCxWuR42wWzJXJGu0AAACEGHC\"",
            "id": "AAMkADAwJXJGu0AAACEiVAAAA=",
            "createdDateTime": "2019-08-01T07:06:27Z",
            "lastModifiedDateTime": "2019-08-01T07:06:28Z",
            "changeKey": "DAAAABYAAAA0RfLCCxWuR42wWzJXJGu0AAACEGHC",
            "categories": [],
            "receivedDateTime": "2019-08-01T07:06:28Z",
            "sentDateTime": "2019-08-01T07:06:24Z",
            "hasAttachments": false,
            "internetMessageId": "<BY5PR17MB38759D33B8925D525A476F33D9DE0@contoso.outlook.com>",
            "subject": "New Time Proposed: Let's go for lunch",
            "bodyPreview": "Can you make the next day instead?",
            "importance": "normal",
            "parentFolderId": "AQMkADAwQAAAIBDAAAAA==",
            "conversationId": "AAQkADAwQAQAMkh89RO3QpBiUCETTtVbIo=",
            "conversationIndex": "AdVINBlgySHz1E7dCkGJQIRNO1VsigAA4n6R",
            "isDeliveryReceiptRequested": null,
            "isReadReceiptRequested": false,
            "isRead": false,
            "isDraft": false,
            "webLink": "https://outlook.office365.com/owa/?ItemID=AAMkADAwJXJGu0AAACEiVAAAA%3D&exvsurl=1&viewmodel=ReadMessageItem",
            "inferenceClassification": "focused",
            "unsubscribeData": [],
            "unsubscribeEnabled": false,
            "meetingMessageType": "meetingTentativelyAccepted",
            "type": "singleInstance",
            "isOutOfDate": false,
            "isAllDay": false,
            "isDelegated": false,
            "responseType": "tentativelyAccepted",
            "recurrence": null,
            "body": {
                "contentType": "html",
                "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nCan you make the next day instead?\r\n</body>\r\n</html>\r\n"
            },
            "sender": {
                "emailAddress": {
                    "name": "Adele Vance",
                    "address": "AdeleV@contoso.OnMicrosoft.com"
                }
            },
            "from": {
                "emailAddress": {
                    "name": "Adele Vance",
                    "address": "AdeleV@contoso.OnMicrosoft.com"
                }
            },
            "toRecipients": [
                {
                    "emailAddress": {
                        "name": "Alex Wilber",
                        "address": "AlexW@contoso.OnMicrosoft.com"
                    }
                }
            ],
            "ccRecipients": [],
            "bccRecipients": [],
            "replyTo": [],
            "flag": {
                "flagStatus": "notFlagged"
            },
            "startDateTime": {
                "dateTime": "2019-08-15T12:00:00.0000000",
                "timeZone": "Pacific Standard Time"
            },
            "endDateTime": {
                "dateTime": "2019-08-15T14:00:00.0000000",
                "timeZone": "Pacific Standard Time"
            },
            "location": {
                "displayName": "Harry's Bar",
                "locationType": "default",
                "uniqueIdType": "unknown"
            },
            "proposedNewTime": {
                "start": {
                    "dateTime": "2019-08-16T12:00:00", 
                    "timeZone": "Pacific Standard Time"
                },
                "end": {
                    "dateTime": "2019-08-16T14:00:00", 
                    "timeZone": "Pacific Standard Time"
                }
            }
         }
        ]
    }
    ```

4. Alex also notices the **event** for the lunch now includes a **proposedNewTime** property that indicates Adele's proposal. This property is only present as part of an [attendee](/graph/api/resources/attendee?view=graph-rest-1.0) instance if the corresponding attendee has suggested an alternative meeting time. 

    <!-- {
      "blockType": "request",
      "name": "event_get"
    }-->
    ```http
    GET https://graph.microsoft.com/v1.0/me/events/AAMkADAwJXJGu0AAACEhWOAAA=?$select=subject,allowNewTimeProposals,start,end,attendees,organizer
    Prefer: outlook.timezone="Pacific Standard Time"
    ```

    <!-- {
      "blockType": "response",
      "name": "event_get",
      "truncated": true,
      "@odata.type": "microsoft.graph.event"
    } -->
    ```http
    HTTP/1.1 200 Ok

    {
        "@odata.context": "https://graph.microsoft.com/testexchangev1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events(subject,allowNewTimeProposals,start,end,attendees,organizer)/$entity",
        "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAAAhEDMA==\"",
        "id": "AAMkADAwJXJGu0AAACEhWOAAA=",
        "subject": "Let's go for lunch",
        "allowNewTimeProposals": true,
        "start": {
            "dateTime": "2019-08-15T12:00:00.0000000",
            "timeZone": "Pacific Standard Time"
        },
        "end": {
            "dateTime": "2019-08-15T14:00:00.0000000",
            "timeZone": "Pacific Standard Time"
        },
        "attendees": [
            {
                "type": "required",
                "status": {
                    "response": "tentativelyAccepted",
                    "time": "2019-08-01T07:06:24.5046431Z"
                },
                "proposedNewTime": {
                    "start": {
                        "dateTime": "2019-08-16T12:00:00.0000000",
                        "timeZone": "Pacific Standard Time"
                    },
                    "end": {
                        "dateTime": "2019-08-16T14:00:00.0000000",
                        "timeZone": "Pacific Standard Time"
                    }
                },
                "emailAddress": {
                    "name": "Adele Vance",
                    "address": "AdeleV@contoso.OnMicrosoft.com"
                }
            }
        ],
        "organizer": {
            "emailAddress": {
                "name": "Alex Wilber",
                "address": "AlexW@contoso.OnMicrosoft.com"
            }
        }
    }
    ```


5. Alex decides to accept Adele's proposal by updating the **event** to the proposed **start** and **end** date/time.

    <!-- {
      "blockType": "request",
      "name": "event_update"
    }-->
    ```http
    PATCH https://graph.microsoft.com/v1.0/me/events/AAMkADAwJXJGu0AAACEhWOAAA=
    Prefer: outlook.timezone="Pacific Standard Time"
    Content-type: application/json

    {
        "start": {
            "dateTime": "2019-08-16T12:00:00.0000000",
            "timeZone": "Pacific Standard Time"
        },
        "end": {
            "dateTime": "2019-08-16T14:00:00.0000000",
            "timeZone": "Pacific Standard Time"
        }
    }
    ```

    Alex's update succeeds and gets the following response.

    <!-- {
      "blockType": "response",
      "name": "event_update",
      "truncated": true,
      "@odata.type": "microsoft.graph.event"
    } -->
    ```http
    HTTP/1.1 200 Ok

    {
      "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('64339082-ed84-4b0b-b4ab-004ae54f3747')/events/$entity",
      "@odata.etag": "W/\"NEXywgsVrkeNsFsyVyRrtAAAAhBizA==\"",
      "id": "AAMkADAwJXJGu0AAACEhWOAAA=",
      "createdDateTime": "2019-08-01T06:41:07.805128Z",
      "lastModifiedDateTime": "2019-08-01T08:21:43.5696529Z",
      "changeKey": "NEXywgsVrkeNsFsyVyRrtAAAAhBizA==",
      "categories": [],
      "originalStartTimeZone": "Pacific Standard Time",
      "originalEndTimeZone": "Pacific Standard Time",
      "uid": "0400000082008A9979A0BD16",
      "reminderMinutesBeforeStart": 15,
      "isReminderOn": true,
      "hasAttachments": false,
      "subject": "Let's go for lunch",
      "bodyPreview": "Does noon work for you?",
      "importance": "normal",
      "sensitivity": "normal",
      "isAllDay": false,
      "isCancelled": false,
      "isOrganizer": true,
      "responseRequested": true,
      "seriesMasterId": null,
      "showAs": "busy",
      "type": "singleInstance",
      "webLink": "https://outlook.office365.com/owa/?itemid=AAMkADAwJXJGu0AAACEhWOAAA%3D&exvsurl=1&path=/calendar/item",
      "onlineMeetingUrl": null,
      "allowNewTimeProposals": true,
      "recurrence": null,
      "responseStatus": {
        "response": "organizer",
        "time": "0001-01-01T00:00:00Z"
      },
      "body": {
        "contentType": "html",
        "content": "<html>\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n<meta content=\"text/html; charset=us-ascii\">\r\n</head>\r\n<body>\r\nDoes noon work for you?\r\n</body>\r\n</html>\r\n"
      },
      "start": {
        "dateTime": "2019-08-16T12:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "end": {
        "dateTime": "2019-08-16T14:00:00.0000000",
        "timeZone": "Pacific Standard Time"
      },
      "location": {
        "displayName": "Harry's Bar",
        "locationType": "default",
        "uniqueId": "Harry's Bar",
        "uniqueIdType": "private"
      },
      "locations": [
        {
            "displayName": "Harry's Bar",
            "locationType": "default",
            "uniqueId": "Harry's Bar",
            "uniqueIdType": "private"
        }
      ],
      "attendees": [
        {
            "type": "required",
            "status": {
                "response": "notResponded",
                "time": "4501-01-01T00:00:00Z"
            },
            "emailAddress": {
                "name": "Adele Vance",
                "address": "AdeleV@contoso.OnMicrosoft.com"
            }
        }
      ],
      "organizer": {
        "emailAddress": {
            "name": "Alex Wilber",
            "address": "AlexW@contoso.OnMicrosoft.com"
        }
      }
    }
    ```


## No attendee proposes alternative time

In step 2, if Adele replied tentative or declined, and did not propose a different date/time, then the following would happen:

- In step 3, Alex would receive an **eventMessageResponse** with the **responseType** property set to `tentativelyAccepted` (or `decline` if Adele declined). Alex would not find a **proposedNewTime** property in this instance of **eventMessageResponse**.
- In step 4, Alex would not find a **proposedNewTime** property in the associated **event** either.

## See also
- [Finding possible meeting times on the Outlook calendar](findmeetingtimes-example.md)
- [Getting the free/busy schedule for users and resources](outlook-get-free-busy-schedule.md)
- [Scheduling repeating appointments as recurring events in Outlook](outlook-schedule-recurring-events.md)