# Synchronize messages in a mail folder

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Synchronize signed-in user's local data store with the messages on the server.

Message synchronization is a per-folder operation. For example, you can synchronize all of the messages in the signed-in user's local Inbox. To synchronize the messages in a folder hierarchy, synchronize each folder individually.
The API supports both full synchronization that retrieves all of the messages in a folder, and incremental synchronization that retrieves all of the messages that have changed since the last full synchronization.

A full synchronization cycle contains at least one round. The first round starts the synchronization, each subsequent round returns another set of synchronized messages. When the mail folder is fully synchronized, Microsoft Graph provides a **delta link** to be used in subsequent incremental synchronizations.

The JSON payload of every response in a round of message synchronization contains one of the following:

- `"@odata.nextLink": "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0"`

- `"@odata.deltaLink": "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta $deltatoken=LztZwWjo5"`

The type of `@odata` key that is present in the JSON payload tells you if additional rounds of synchronization are needed. 

The following table shows the sequence of synchronization response `@odata` type values in a typical synchronization cycle. 

|Sequence|`@odata` type|Next action|
|:-------|:-------------|:------------|
|Round 1|`@odata.nextLink`|Get additional messages at the next link|
|Round n|`@odata.nextLink`|Get additional messages at the next link|
|Round n+1|`@odata.deltaLink`|No additional messages to synchronize. Cache the delta link value to be used in an incremental sync.|

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.Read, Mail.ReadWrite    |
|Delegated (personal Microsoft account) | Mail.Read, Mail.ReadWrite    |
|Application | Mail.Read, Mail.ReadWrite |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/messages/delta
GET /users/{id | userPrincipalName}/mailFolders/{id}/messages/delta
```
## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [Message](../resources/message.md) objects in the response body.


## Example
The following examples show a complete round of mail folder synchronization. 

1. Initial synchronization request and response
1. Second round of synchronization request and response
1. Final round of synchronization request and response.

##### Synchronization round one Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_messages"
}-->
```http
GET https://graph.microsoft.com/beta/me/mailFolders/{id}/messages/delta
```
##### Response
Here is an example of the first response. 

>**Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Preference-Applied: odata.track-changes
OData-Version: 4.0
Content-Length: 257503

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(message)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAAeSLkRkXbBznTvAAE3TP8+\"",
            "createdDateTime": "2017-12-19T21:18:25Z",
            "lastModifiedDateTime": "2017-12-19T21:18:25Z",
            "receivedDateTime": "2017-12-19T21:18:25Z",
            "sentDateTime": "2017-12-19T21:18:23Z",
            "hasAttachments": false,
            "subject": "Jennifer Booth sent you a message in Microsoft Teams",
            "bodyPreview": " ",
            "importance": "normal",
            "inferenceClassification": "other",
            "body": {
                "contentType": "html",
                "content": ""
            },
            "sender": {
                "emailAddress": {
                    "name": "Microsoft Teams",
                    "address": "noreply@email.teams.contoso.com"
                }
            },
            "from": {
                "emailAddress": {
                    "name": "Microsoft Teams",
                    "address": "noreply@email.teams.contoso.com"
                }
            },
            "toRecipients": [{
                "emailAddress": {
                    "name": "Tegan Holland",
                    "address": "tholland@contoso.com"
                }
            }]
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAABmTvAAE3TP87\"",
            "createdDateTime": "2017-12-19T20:34:04Z",
            "lastModifiedDateTime": "2017-12-19T20:34:05Z",
            "receivedDateTime": "2017-12-19T20:34:04Z",
            "sentDateTime": "2017-12-19T20:33:47Z",
            "hasAttachments": false,
            "subject": "Pluralsight at Contoso",
            "bodyPreview": "Hello Tegan,\r\n\r\n\r\n\r\nFor many at Contoso, the holiday break is a great time to sharpen your technical skills.  Microsoft's online training platform can help you do that.",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
            },
            "sender": {
                "emailAddress": {
                    "name": "Scott Deadrick",
                    "address": "scott-deadrick@pluralsight.com"
                }
            },
            "from": {
                "emailAddress": {
                    "name": "Scott Deadrick",
                    "address": "scott-deadrick@pluralsight.com"
                }
            },
            "toRecipients": [{
                "emailAddress": {
                    "name": "Tegan Holland",
                    "address": "tholland@contoso.com"
                }
            }]
        }, 
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAABmngqUDhbeSLkRkXbBznTvAAE3TP8k\"",
            "createdDateTime": "2017-12-19T18:54:51Z",
            "lastModifiedDateTime": "2017-12-19T18:54:51Z",
            "receivedDateTime": "2017-12-19T18:54:51Z",
            "sentDateTime": "2017-12-19T18:54:46Z",
            "hasAttachments": false,
            "subject": "Tegan Holland, start your day by seeing what's going on at Office 365 MVP Network",
            "bodyPreview": "Discover what's happening across your organization.",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
            },
            "sender": {
                "emailAddress": {
                    "name": "Office 365 MVP Network on Yammer",
                    "address": "noreply@yammer.com"
                }
            },
            "from": {
                "emailAddress": {
                    "name": "Office 365 MVP Network on Yammer",
                    "address": "noreply@yammer.com"
                }
            },
            "toRecipients": [{
                "emailAddress": {
                    "name": "Tegan Holland",
                    "address": "tholland@contoso.com"
                }
            }]
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAABmngqUDhbeSLkRkXbBznTvAAE1p8BV\"",
            "createdDateTime": "2017-12-19T11:39:21Z",
            "lastModifiedDateTime": "2017-12-19T11:39:21Z",
            "receivedDateTime": "2017-12-19T11:39:21Z",
            "sentDateTime": "2017-12-19T11:39:21Z",
            "hasAttachments": false,
            "subject": "Contoso Team Meeting  and 3 other events today",
            "bodyPreview": "47\u00b0 / 38\u00b0 Rain\r\nRedmond, WA\r\n\r\n\r\n\r\nHello Tegan Holland,\r\n\r\nYour agenda for Tuesday, December 19, 2017\r\n\r\n\r\n9:00 AM\r\n1 hr\r",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
            },
            "sender": {
                "emailAddress": {
                    "name": "Microsoft Outlook Calendar"
                }
            },
            "from": {
                "emailAddress": {
                    "name": "Microsoft Outlook Calendar"
                }
            },
            "toRecipients": [{
                "emailAddress": {
                    "name": "Tegan Holland",
                    "address": "tholland@contoso.com"
                }
            }],
            "replyTo": [{
                "emailAddress": {
                    "name": "no-reply@microsoft.com",
                    "address": "no-reply@microsoft.com"
                }
            }]
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "@odata.etag": "W/\"CQAAABYAAABmngqUDhbeSLkRkXbBznTvAAE1p8Bp\"",
            "createdDateTime": "2017-12-19T09:50:17Z",
            "lastModifiedDateTime": "2017-12-19T16:35:15Z",
            "receivedDateTime": "2017-12-19T09:50:18Z",
            "sentDateTime": "2017-12-19T09:50:15Z",
            "hasAttachments": false,
            "subject": "Your Weekly Application Insights digest email",
            "bodyPreview": "Your weekly Application Insights telemetry report.",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""},
                "sender": {
                    "emailAddress": {
                        "name": "Application Insights",
                        "address": "ai-noreply@contoso.com"
                    }
                },
                "from": {
                    "emailAddress": {
                        "name": "Application Insights",
                        "address": "ai-noreply@contoso.com"
                    }
                },
                "toRecipients": [{
                    "emailAddress": {
                        "name": "Tegan Holland",
                        "address": "tholland@contoso.com"
                    }
                }]
            }]
    }
```

The `@odata.nextLink` value of "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0" includes the `$skiptoken` query string. The mail folder is not fully synchronized. Make another GET request to get the next set of messages from the remote data store. 


##### Synchronization round two Request
Here is an example of the a request for the next set of messages from the remote data store. The GET request is made against the `@odata.nextLink` value from the previous operation. 

<!-- {
  "blockType": "request",
  "name": "get_messages"
}-->
```http
GET https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0
```
##### Response
Here is an example of the response. 


>**Note:** The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Preference-Applied: odata.track-changes
OData-Version: 4.0
Content-Length: 257503

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(message)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0",
    "value": [
            {
                "@odata.type": "#microsoft.graph.message",
                "@odata.etag": "W/\"CQAAABYAAABmngqUDhbeSLkRkXbBznTvAAE1p8BT\"",
                "createdDateTime": "2017-12-19T09:32:51Z",
                "lastModifiedDateTime": "2017-12-19T09:32:51Z",
                "receivedDateTime": "2017-12-19T09:32:51Z",
                "sentDateTime": "2017-12-19T09:32:49Z",
                "hasAttachments": false,
                "subject": "Your Weekly Application Insights digest email",
                "bodyPreview": "Your weekly Application Insights telemetry report.",
                "importance": "normal",
                "body": {
                    "contentType": "html",
                    "content": ""
                },
                "sender": {
                    "emailAddress": {
                        "name": "Application Insights",
                        "address": "ai-noreply@contoso.com"
                    }
                },
                "from": {
                    "emailAddress": {
                        "name": "Application Insights",
                        "address": "ai-noreply@contoso.com"
                    }
                },
                "toRecipients": [{
                    "emailAddress": {
                        "name": "Tegan Holland",
                        "address": "tholland@contoso.com"
                    }
                }],
                "ccRecipients": [],
                "bccRecipients": [],
                "replyTo": [{
                    "emailAddress": {
                        "name": "ai-noreply@contoso.com",
                        "address": "ai-noreply@contoso.com"
                    }
                }]
            }]
    }
```

The `@odata.nextLink` value of "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0" includes the `$skiptoken` query string. The mail folder is not fully synchronized. Make another GET request to get the next set of messages from the remote data store. 

##### Third synchronization round request
In this example, the third synchronization request completes the synchronization of the Inbox mail folder.


```
GET https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0

```

##### Response

```
HTTP/1.1 200 OK
Preference-Applied: odata.track-changes
Content-Length: 392

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(message)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/me/mailFolders/Inbox/messages/delta?$deltatoken=LztZwWjo5IivWBhyxw5rAOn0G2spjS3WuY0raFhuWsc6DsTokRlUQFBfE7LZ2U3E1kh7zt7BB4SdqXNXJn4OGBlsAXb8RiBuoOayRLgTUQc.ejiaf1ixbKUfD7MLuo5Np9wsglJl-wa5Z9usbCb42JI",
    "value": []
}
```

The `@odata.deltaLink` key is present in the response when the folder is fully synchronized. No additional synchronization requests are required.  

>**Important:** To start a new round of synchronization, use the `@odata.deltaLink` value from the last response from the previous complete synchronization round. The `deltatoken` value tells Microsoft Graph which message marks the end of a previous synchronization. The new round of synchronization gets created, deleted, and changed messages after that point. 

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List messages",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
