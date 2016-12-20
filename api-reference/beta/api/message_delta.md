# message: delta

Get a set of messages that have been added, deleted, or updated in a specified folder.

A **delta** function call for messages in a folder is similar to a GET request, except that by appropriately 
applying state tokens in one or more of these calls, you can [query for incremental changes in the messages in 
that folder](../../../concepts/delta_query_messages.md). This allows you to maintain and synchronize a local store of a user's messages without 
having to fetch the entire set of messages from the server every time.  

### Prerequisites
One of the following **permissions** is required to execute this API: _Mail.Read_; _Mail.ReadWrite_
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/{id}/messages/delta
GET /users/<id>/mailFolders/{id}/messages/delta
```

### Optional query parameters

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The 
_id_ property is always returned. 
- Delta query support `$select`, `$top`, and `$expand` for messages. 
- There is limited support for `$filter` and `$orderby`:
  * The only supported `$filter` expresssions are `$filter=receivedDateTime+ge+{value}` 
  or `$filter=receivedDateTime+gt+{value}`.
  * The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you do not include
  an `$orderby` expression, the return order is not guaranteed. 
- There is no support for `$search`.

### Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  | Bearer {code}. Required.|
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |


### Response
If successful, this method returns a `200, OK` response code and [message](../resources/message.md) collection object in the response body.

### Example
##### Request
The following example shows how to make a single **delta** function call, and limit the maximum number of messages 
in the response body to 2.

To track changes in the messages in a folder, you would make one or more **delta** function calls to get the set
of incremental changes since the last delta query. For an example that shows a round of delta query calls, see 
[Get incremental changes to messages in a folder (preview)](../../../concepts/delta_query_messages.md).
 
<!-- {
  "blockType": "request",
  "name": "message_delta"
}-->
```http
GET https://graph.microsoft.com/beta/me/mailFolders/{id}/messages/delta

Prefer: odata.maxpagesize=2
```

##### Response
If the request is successful, the response would include a state token, which is either a _skipToken_  
(in an _@odata.nextLink_ response header) or a _deltaToken_ (in an _@odata.deltaLink_ response header). 
Respectively, they indicate whether you should continue with the round or you have completed 
getting all the changes for that round.

The response below shows a _skipToken_ in an _@odata.nextLink_ response header.

Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 337

{
  "@odata.nextLink":"https://graph.microsoft.com/beta/me/mailfolders('{id}')/messages/delta?$skiptoken={_skipToken_}",
  "value": [
    {
      "receivedDateTime": "datetime-value",
      "sentDateTime": "datetime-value",
      "hasAttachments": true,
      "internetMessageId": "internetMessageId-value",
      "subject": "subject-value",
      "body": {
        "contentType": "contentType-value",
        "content": "content-value"
      }
    }
  ]
}
```

### See also

- [Microsoft Graph delta query (preview)](../../../concepts/delta_query_overview.md)
- [Get incremental changes to messages in a folder (preview)](../../../concepts/delta_query_messages.md)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "message: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->