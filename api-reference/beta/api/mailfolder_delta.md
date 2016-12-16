# mailFolder: delta

Get a set of mail folders that have been added, deleted, or removed from the user's mailbox.

A **delta** function call for mail folders in a mailbox is similar to a GET request, except that by appropriately 
applying [state tokens](../../../concepts/delta_query_overview.md) in one or more of these calls, 
you can query for incremental changes in the mail folders. This allows you to maintain and synchronize 
a local store of a user's mail folders without having to fetch all the mail folders of that mailbox from the server every time.

### Prerequisites
One of the following **scopes** is required to execute this API: _Mail.Read_; _Mail.ReadWrite_

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/mailFolders/delta
GET /users/<id>/mailFolders/delta
```

### Optional query parameters

You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The 
_id_ property is always returned. 

### Request headers
| Name       | Type | Description |
|:---------------|:----------|:----------|
| Authorization  | string  | Bearer {code}. Required.|
| Content-Type  | string  | application/json. Required. |
| Prefer | string  | odata.maxpagesize={x}. Optional. |


### Response
If successful, this method returns a `200, OK` response code and [mailFolder](../resources/mailfolder.md) collection object in the response body.

### Example
##### Request
The following example shows how to make a single **delta** function call, and limit the maximum number of mail folders 
in the response body to 2.

To track changes in the mail folders of a mailbox, you would make one or more **delta** function calls, with 
appropriate state tokens, to get the set of incremental changes since the last delta query. 

You can find a similar example that shows how to use the state tokens to track changes in the messages of a mail folder: 
[Get incremental changes to messages in a folder (preview)](../../../concepts/delta_query_messages.md). The main differences
between tracking mail folders and tracking messages in a folder are in the delta query request URLs, and the query responses 
returning **mailFolder** rather than **message** collections.

<!-- {
  "blockType": "request",
  "name": "mailfolder_delta"
}-->
```http
GET https://graph.microsoft.com/beta/me/mailFolders/delta

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
  "@odata.type": "microsoft.graph.mailFolder",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 254

{
  "@odata.nextLink":"https://graph.microsoft.com/beta/me/mailfolders/delta?$skiptoken={_skipToken_}",
  "value": [
    {
      "displayName": "displayName-value",
      "parentFolderId": "parentFolderId-value",
      "childFolderCount": 99,
      "unreadItemCount": 99,
      "totalItemCount": 99,
      "wellKnownName": "wellKnownName-value"
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
  "description": "mailFolder: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->