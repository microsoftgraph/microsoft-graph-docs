# Synchronize messages in a mail folder


Synchronize signed-in user's local data store with the messages on the server.

Message synchronization is a per-folder operation. For example, you can synchronize all of the messages in the signed-in user's local Inbox. To synchronize the messages in a folder hierarchy, synchronize each folder individually.
The API supports both full synchronization that retrieves all of the messages in a folder, and incremental synchronization that retrieves all of the messages that have changed since the last full synchronization.

A full synchronization cycle contains at least one round. The first round starts the synchronization, each subsequent round returns another set of synchronized messages. When the mail folder is fully synchronized, Microsoft Graph provides a **delta link** to be used in subsequent incremental synchronizations.

The JSON payload of every response in a round of message synchronization contains one of the following:

- `"@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0"`

- `"@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta $deltatoken=LztZwWjo5"`

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
  "name": "sync_messages"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/{id}/messages/delta
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
Content-Length: 3754

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "subject": "Jennifer Booth sent you a message in Microsoft Teams",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
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
            "subject": "Microsoft Virtual Academy at Contoso",
            "bodyPreview": "Hello Tegan,\r\n\r\n\r\n\r\nFor many at Contoso, the holiday break is a great time to sharpen your technical skills.  Microsoft's online training platform can help you do that.",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
            },
            "from": {
                "emailAddress": {
                    "name": "Elliot Hyde",
                    "address": "elliot-hyde@tailspintoys.com"
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
            "subject": "Tegan Holland, start your day by seeing what's going on at Office 365 MVP Network",
            "bodyPreview": "Discover what's happening across your organization.",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
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
        }]
    }
```

The `@odata.nextLink` value of "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0" includes the `$skiptoken` query string. The mail folder is not fully synchronized. Make another GET request to get the next set of messages from the remote data store. 


##### Synchronization round two Request
Here is an example of the a request for the next set of messages from the remote data store. The GET request is made against the `@odata.nextLink` value from the previous operation. 

<!-- {
  "blockType": "request",
  "name": "sync_messages"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0
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
Content-Length: 1438

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0",
    "value": [
            {
                "@odata.type": "#microsoft.graph.message",
                "subject": "Your Weekly Application Insights digest email",
                "bodyPreview": "Your weekly Application Insights telemetry report.",
                "importance": "normal",
                "body": {
                    "contentType": "html",
                    "content": ""
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

The `@odata.nextLink` value of "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0" includes the `$skiptoken` query string. The mail folder is not fully synchronized. Make another GET request to get the next set of messages from the remote data store. 

##### Third synchronization round request
In this example, the third synchronization request completes the synchronization of the Inbox mail folder.


```
GET https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$skiptoken=LztZwWjo5IivWgsDXIEomMBKSn2qCclS0

```

##### Response

```
HTTP/1.1 200 OK
Preference-Applied: odata.track-changes
Content-Length: 392

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$deltatoken=LztZwWjo5IivWBhyxw5rAOn0G2spjS3WuY0raFBlsAXb8RiBuoOayRLgTUQc",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "subject": "Contoso Team Meeting  and 3 other events today",
            "bodyPreview": "47\u00b0 / 38\u00b0 Rain\r\nRedmond, WA\r\n\r\n\r\n\r\nHello Tegan Holland,\r\n\r\nYour agenda for Tuesday, December 19, 2017\r\n\r\n\r\n9:00 AM\r\n1 hr\r",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": ""
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
        }]
}
```

The `@odata.deltaLink` key is present in the response when the folder is fully synchronized. No additional synchronization requests are required.  

>**Important:** To start a new round of synchronization, use the `@odata.deltaLink` value from the last response from the previous complete synchronization round. The `deltatoken` value tells Microsoft Graph which message marks the end of a previous synchronization. The new round of synchronization gets created, deleted, and changed messages after that point. 


##### Incremental synchronization request
Here is an example of the a request for messages added, changed, or deleted on the remote data store since the last full or incremental synchronization. The GET request is made against the `@odata.deltaLink` value from the last message in a previous synchronization cycle.

```
GET https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$deltatoken=LztZwWjo5IivWBhyxw5rAOn0G2spjS3WuY0raFBlsAXb8RiBuoOayRLgTUQc

```

##### Response
The response to the incremental synchronization request shows a single change in the messages on the remote store since the last synchronization. A message was deleted and the other message's followup status changed. The presence of `@odata.deltalink` in the response body indicates that there are no additional synchronization requests needed. The local mail folder is now fully synchronized. 

>**Note:** Some of the properties of a message that can be changed by a user through the Microsoft Outlook client are not supported by the Microsoft Graph API v1.0. In this example, a message's followup status is not supported in the API. However, the changed message still appears in the response to a synchronization request.

```
HTTP/1.1 200 OK
Preference-Applied: odata.track-changes
Content-Length: 1593

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(message)",
    "@odata.deltaLink": "https://graph.microsoft.com/v1.0/me/mailFolders/Inbox/messages/delta?$deltatoken=LztZwWjo5IivWBhyxw5rAOnsdewdfWuY0raFBlsAXb8RiBuoOayRLgTdsddsfsde",
    "value": [
        {
            "@odata.type": "#microsoft.graph.message",
            "id": "AAMkADk0MGFkODE3LWE4MmYtNDRhOS0Dh_6qB-pB2Sa2pUum19a6YAAKnLuxoAAA=",
            "@removed": {
                "reason": "deleted"
            }
        },
        {
            "@odata.type": "#microsoft.graph.message",
            "subject": "Fabric CDN now available",
            "bodyPreview": "Hi everyone, the Fabric team pushed the CSS to their new CDN:",
            "importance": "normal",
            "body": {
                "contentType": "html",
                "content": "<html></html>\r\n"
            },
            "from": {
                "emailAddress": {
                    "name": "Jodie Sharp",
                    "address": "Jodie.Sharp@contoso.com"
                }
            },
            "toRecipients": [
                {
                    "emailAddress": {
                        "name": "Violeta Rakus",
                        "address": "Violeta.Rakus@contoso.com"
                    }
                }
            ],
            "ccRecipients": [],
            "bccRecipients": [],
            "replyTo": [],
            "id": "AAMkADk0MGFkODE3LWEAAA="
        }]
}
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List messages",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
