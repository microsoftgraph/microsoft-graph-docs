# Delete subscription

Delete a subscription.
## Prerequisites
One of the following **scopes**, depending on the target resource, are required to execute this API: *Mail.Read*, *Calendars.Read*, *Contacts.Read*, *Group.Read.All*, *Files.ReadWrite*, or *Files.ReadWrite.All*
## HTTP request
<!-- { "blockType": "ignored" } -->
```http
DELETE /subscriptions/{subscriptionId}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `204 No Content` response code.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_subscription"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/subscriptions/{subscriptionId}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.subscription"
} -->
```http
HTTP/1.1 204 No Content
```


<!-- {
  "type": "#page.annotation",
  "description": "Delete subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
