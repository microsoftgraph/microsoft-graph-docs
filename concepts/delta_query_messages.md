# Get incremental changes to messages in a folder (preview)

Delta query lets you query for additions, deletions, or updates to messages in a folder, by way of a series of 
[delta](../api-reference/beta/api/message_delta.md) function calls. Delta data enables you to maintain 
and synchronize a local store of a user's messages, 
without having to fetch the entire set of the user's messages from the server every time.

Delta query supports both full synchronization that retrieves all of the messages in a folder (for example, the user's Inbox), 
and incremental synchronization that retrieves all of the messages that have changed in that folder since 
the last synchronization. Typically, you would do an initial full synchronization of all the messages in a folder, and 
subsequently, get incremental changes to that folder periodically. 

## Track message changes in a folder

Delta query is a per-folder operation. To track the changes of the messages in a folder hierarchy, you need to track each folder individually. 

Tracking message changes in a mail folder typically is a round of one or more GET requests with the **delta** function. You make the GET
request much like the way you [get messages](https://graph.microsoft.io/en-us/docs/api-reference/beta/api/user_list_messages), 
except that you include the following:

- The **delta** function.
- A state token (_deltaToken_ or _skipToken_) from the previous GET **delta** function call for that folder.

A state token takes a snapshot of the messages in the folder, and identifies where you are in 
that round of change tracking. It also encodes any query parameter in your initial delta query GET request, saving 
you from repeating those parameters in subsequent requests. 
See the [example](#example-to-synchronize-messages-in-a-folder) below to learn how to use these tokens.

### Use query parameters in a delta query for messages

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The 
_id_ property is always returned. 
- Delta query support `$select`, `$top`, and `$expand` for messages. 
- There is limited support for `$filter` and `$orderby`:
  * The only supported `$filter` expresssions are `$filter=receivedDateTime+ge+{value}` 
  or `$filter=receivedDateTime+gt+{value}`.
  * The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you do not include
  an `$orderby` expression, the return order is not guaranteed. 
- There is no support for `$search`.


### Optional request header

Each delta query GET request returns a collection of one or more messages in the response. You can optionally specify 
the request header, _Prefer: odata.maxpagesize={x}_, to set the maximum number of messages in a response.

<!--
### Iterative process 

A typical round to track message changes goes like this:

1. Make the initial GET request with the mandatory _Prefer: odata.track-changes_ header. If this is your very first delta query 
for messages in that folder, don't provide any state token. If the messages support tracking changes, following the iterative 
process (steps 2-6) described below will return the entire set of messages in that folder. 

2. Check if the first response returns the _Preference-Applied: odata.track-changes_ header, 
which confirms your resource supports tracking changes. Stop if you don't receive the response header.

3. If you receive a _skipToken_ (in an _@odata.nextLink_ response header) in the response, you should continue to track the
   additional messages that have changed (added, deleted, or updated). Make a second GET request, using the URL returned 
   in _@odata.nextLink_, which includes a _skipToken_. 

4. The second request will return additional messages that have changed, and either a _skipToken_ if there are more changed messages, 
  or a _deltaToken_ if all the changed messages have been returned.

5. If you receive a _skipToken_ from the last GET request, continue getting the changes by sending a next GET call, similar to step 3. 

6. When you eventually receive a _detlaToken (in an _@odata.deltaLink_ response header) in the response from a GET, stop. This 
round of change tracking is complete. 

7. Save the _deltaToken_. The next time you track changes for the same folder, make a GET request 
similar to step 1, except that now you can use this _deltaToken_ to get just the delta data (messages that have been added, deleted or updated) 
since the completion of the very first round.

-->

## Example to synchronize messages in a folder

The following example shows a series of 3 requests to synchronize a specific folder which contains 5 messages:

- [Sample initial request](#sample-initial-request) and [response](#sample-initial-response)
- [Sample second request](#sample-second-request) and [response](#sample-second-response)
- [Sample third request](#sample-third-request) and [final response](#sample-third-and-final-response)

See also what you'll do in the [next round](#the-next-round).


### Sample initial request

In this example, the specified folder is being synchronized for the first time, so the initial sync request does not include any state token. 
This round will return all the messages in that folder.

The first request specifies the following:
- A `$select` parameter to return the **Subject** and **Sender** properties for each message in the response.
- The [optional request header](#optional-request-header), _odata.maxpagesize_, returning 2 messages at a time.

```
GET https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$select=Subject,Sender HTTP/1.1
Prefer: odata.maxpagesize=2
```


### Sample initial response

The response includes two messages and a `@odata.nextLink` response header with a `skipToken`. 
The `skipToken` indicates there are more messages in the folder to get.

```
{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(message)",
    "@odata.nextLink":"https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPuoTQWfcsAbkYM",
    "value":[
        {
            "@odata.type":"#microsoft.graph.message",
            "@odata.etag":"W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAASsKZz\"",
            "subject":"Holiday hours update",
            "sender":{
                "emailAddress":{
                    "name":"Dana Swope",
                    "address":"danas@contoso.onmicrosoft.com"
                }
            },
            "id":"AAMkADNkNAAASq35xAAA="
        },
        {
            "@odata.type":"#microsoft.graph.message",
            "@odata.etag":"W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB/\"",
            "subject":"Holiday promotion sale",
            "sender":{
                "emailAddress":{
                    "name":"Fanny Downs",
                    "address":"fannyd@contoso.onmicrosoft.com"
                }
            },
            "id":"AQMkADNkNAAAVRMKAAAAA=="
        }
    ]
}
```

### Sample second request

The second request specifies the `skipToken` returned from the previous response. Notice that it no longer has to specify
the same `$select` parameter as in the initial request, as the `skipToken` encodes and includes it.


```
GET https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPuoTQWfcsAbkYM HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample second response 

The second response returns the next 2 messages in the folder, a `nextLink` and another `skipToken`, indicating there are 
more messages to get from the folder.

```
{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(message)",
    "@odata.nextLink":"https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPKILK4jLH7mAd1lLU",
    "value":[
        {
            "@odata.type":"#microsoft.graph.message",
            "@odata.etag":"W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB+\"",
            "subject":"New or modified user account information",
            "sender":{
                "emailAddress":{
                    "name":"Randi Welch",
                    "address":"randiw@contoso.onmicrosoft.com"
                }
            },
            "id":"AQMkADNkNAAAgWJAAAA"
        },
        {
            "@odata.type":"#microsoft.graph.message",
            "@odata.etag":"W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB9\"",
            "subject":"New or modified user account information",
            "sender":{
                "emailAddress":{
                    "name":"Randi Welch",
                    "address":"randiw@contoso.onmicrosoft.com"
                }
            },
            "id":"AQMkADNkNAAAgWHAAAA"
        }
    ]
}
```


### Sample third request

The third request continues to use the latest `skipToken` returned from the last sync request. 
Save the `deltaToken` and use it in the request URL to [synchronize that folder in the next round](#the-next-round). 

```
GET https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$skiptoken=GwcBoTmPKILK4jLH7mAd1lLU HTTP/1.1
Prefer: odata.maxpagesize=2
```

### Sample third and final response

The third response returns the only remaining message in the folder, and a `deltaToken` which indicates 
synchronization is complete for this folder. 


```
{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(message)",
    "@odata.deltaLink":"https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY",
    "value":[
        {
            "@odata.type":"#microsoft.graph.message",
            "@odata.etag":"W/\"CQAAABYAAAARn2vdzPFjSbaPPxzjlzOTAAAEfYB8\"",
            "subject":"You've joined the Customer Manager group",
            "sender":{
                "emailAddress":{
                    "name":"Customer Managers team",
                    "address":"customer_managers@contoso.onmicrosoft.com"
                }
            },
            "id":"AQMkADNkNAAAgWFAAAA"
        }
    ]
}
```


### The next round

Using the `deltaToken` from the [last request](#sample-third-request) in the last round, 
you will be able to get only those messages that have changed (by being added, deleted, or updated) since then in that folder.
Your first request in the next round will look like the following, assuming you prefer to keep the same maximum page size in the response:

```
GET https://graph.microsoft.com/beta/me/mailfolders('AQMkADNkNAAAgEMAAAA')/messages/delta?$deltatoken=GwcBoTmPuoGNlgXgF1nyUNMXY HTTP/1.1
Prefer: odata.maxpagesize=2
```



## See also

- [Microsoft Graph delta query](../Concepts/delta_query_overview.md)
- [Get incremental changes for groups (preview)](../Concepts/delta_query_groups.md)
- [Get incremental changes for users (preview)](../Concepts/delta_query_users.md)
