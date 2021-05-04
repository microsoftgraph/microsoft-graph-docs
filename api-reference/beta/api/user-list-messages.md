---
title: "List messages"
description: "Get the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders). "
localization_priority: Normal
doc_type: apiPageType
author: "abheek-das"
ms.prod: "outlook"
---

# List messages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the messages in the signed-in user's mailbox (including the Deleted Items and Clutter folders). 

Depending on the page size and mailbox data, getting messages from a mailbox can incur multiple requests. The default page size is 10 messages. Use `$top` to customize the page size, within the range of 1 and 1000.

To improve the operation response time, use `$select` to specify the exact properties you need; see [example 1](#example-1-list-all-messages) below. Fine-tune the values for `$select` and `$top`, especially when you must use a larger page size, as returning a page with hundreds of messages each with a full response payload may trigger the [gateway timeout](/graph/errors#http-status-codes) (HTTP 504).

To get the next page of messages, simply apply the entire URL returned in `@odata.nextLink` to the next get-messages request. This URL includes any query parameters you may have specified in the initial request. 

Do not try to extract the `$skip` value from the `@odata.nextLink` URL to manipulate responses. This API uses the `$skip` value to keep count of all the items it has gone through in the user's mailbox to return a page of message-type items. It's therefore possible that even in the initial response, the `$skip` value is larger than the page size. For more information, see [Paging Microsoft Graph data in your app](/graph/paging).

You can filter on the messages and get only those that include a [mention](../resources/mention.md) of the signed-in user. See an [example](#request-2) below. 
By default, the `GET /me/messages` operation does not return the **mentions** property. Use the `$expand` query parameter 
to [find details of each mention in a message](../api/message-get.md#example-2-get-all-mentions-in-a-specific-message).

There are two scenarios where an app can get messages in another user's mail folder:

* If the app has application permissions, or,
* If the app has the appropriate delegated [permissions](#permissions) from one user, and another user has shared a mail folder with that user, or, has given delegated access to that user. See [details and an example](/graph/outlook-share-messages-folders).

> **Note** Be aware of the [known issue](/graph/known-issues#get-messages-returns-chats-in-microsoft-teams) that this operation includes Microsoft Teams chat messages in its response.
 
## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.ReadBasic, Mail.Read, Mail.ReadWrite    |
|Delegated (personal Microsoft account) | Mail.ReadBasic, Mail.Read, Mail.ReadWrite    |
|Application | Mail.ReadBasic.All, Mail.Read, Mail.ReadWrite |

## HTTP request

To get all the messages in a user's mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET /me/messages
GET /users/{id | userPrincipalName}/messages
```

To get messages in a specific folder in the user's mailbox:

<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/messages
GET /users/{id | userPrincipalName}/mailFolders/{id}/messages
```

To get all the messages in the user's mailbox that include a **mention** of the user:

<!-- { "blockType": "ignored" } -->
```http
GET /me/messages?$filter=mentionsPreview/isMentioned eq true
GET /users/{id | userPrincipalName}/messages?$filter=mentionsPreview/isMentioned eq true
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

You can use the `$filter` query parameter on the **mentionsPreview** property to get those messages that mention the signed-in user.

### Using filter and orderby in the same query
When using `$filter` and `$orderby` in the same query to get messages, make sure to specify properties in the following ways:

1. Properties that appear in `$orderby` must also appear in `$filter`. 
2. Properties that appear in `$orderby` are in the same order as in `$filter`.
3. Properties that are present in `$orderby` appear in `$filter` before any properties that aren't.

Failing to do this results in the following error:

- Error code: `InefficientFilter`
- Error message: `The restriction or sort order is too complex for this operation.`

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Prefer: outlook.body-content-type | string | The format of the **body** and **uniqueBody** properties to be returned in. Values can be "text" or "html". If the header is not specified, the **body** and **uniqueBody** properties are returned in HTML format. Optional. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and collection of [message](../resources/message.md) objects in the response body.

## Examples
### Example 1: List all messages
#### Request
The first example gets the default, top 10 messages in the signed-in user's mailbox. It uses `$select` to return a subset of the properties of each message in the response. 

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_messages"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/messages?$select=sender,subject
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-messages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-messages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-messages-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-messages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
Here is an example of the response. To get the next page of messages, apply the URL returned in `@odata.nextLink` to a subsequent GET request.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('bb8775a4-4d8c-42cf-a1d4-4d58c2bb668f')/messages(sender,subject)",
  "value": [
    {
      "@odata.etag": "W/\"CQAAABYAAADHcgC8Hl9tRZ/hc1wEUs1TAAAwR4Hg\"",
      "id": "AAMkAGUAAAwTW09AAA=",
      "subject": "You have late tasks!",
      "sender": {
        "emailAddress": {
          "name": "Microsoft Planner",
          "address": "noreply@Planner.Office365.com"
        }
      }
    }
  ]
}
```

### Example 2: Use $filter to get all messages satisfying a specific condition
#### Request
The next example filters all messages in the signed-in user's mailbox for those that mention the user. It also uses `$select` to return a subset of the properties of each message in the response. 

The example also incorporates URL encoding for the space characters in the query parameter string.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_messages_with_mentions"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/messages?$filter=MentionsPreview/IsMentioned%20eq%20true&$select=Subject,Sender,ReceivedDateTime,MentionsPreview
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-messages-with-mentions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-messages-with-mentions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-messages-with-mentions-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-messages-with-mentions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
Here is an example of the response. Note: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 987

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#me/messages(subject,sender,receivedDateTime,mentionsPreview)",
  "value":[
    {
      "@odata.id":"https://graph.microsoft.com/beta/users('266efe5a-0fd7-4edd-877b-b2d1e561f193@ae01a323-3934-4475-a32d-af1274312bb0')/messages('AQMkADJmMTUAAAgVZAAAA')",
      "@odata.etag":"W/\"CQAAABYAAAAPFhK2FclcRbABBJhCde8iAAAAAATI\"",
      "id":"AQMkADJmMTUAAAgVZAAAA",
      "receivedDateTime":"2016-07-21T07:40:21Z",
      "subject":"Re: Start planning soon",
      "sender":{
        "emailAddress":{
          "name":"Adele Vance",
          "address":"AdeleV@contoso.com"
        }
      },
      "mentionsPreview":{
        "isMentioned":true
      }
    }
  ]
}
```

### Example 3: Use prefer header to get the message body and uniqueBody is text format
#### Request
The third example shows how to use a `Prefer: outlook.body-content-type="text"` header to get the **body** and **uniqueBody** properties of each message in text format.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_messages_in_text"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/messages?$select=subject,body,bodyPreview,uniqueBody
Prefer: outlook.body-content-type="text"
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-messages-in-text-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-messages-in-text-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-messages-in-text-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-messages-in-text-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
Here is an example of the response. 

<!--
Note: The response includes a `Preference-Applied: outlook.body-content-type` header to acknowledge the `Prefer: outlook.body-content-type` request header.
-->

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#users('cd209b0b-3f83-4c35-82d2-d88a61820480')/messages(subject,body,bodyPreview,uniqueBody)",
  "value":[
    {
      "@odata.type":"#microsoft.graph.eventMessageRequest",
      "@odata.etag":"W/\"CwAAABYAAABmWdbhEgBXTophjCWt81m9AAAoZYj5\"",
      "id":"AAMkAGIAAAoZCfIAAA=",
      "subject":"Orientation ",
      "bodyPreview":"Dana, this is the time you selected for our orientation. Please bring the notes I sent you.",
      "body":{
        "contentType":"text",
        "content":"Dana, this is the time you selected for our orientation. Please bring the notes I sent you.\r\n"
      },
      "uniqueBody":{
        "contentType":"text",
        "content":"Dana, this is the time you selected for our orientation. Please bring the notes I sent you.\r\n"
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List messages",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
