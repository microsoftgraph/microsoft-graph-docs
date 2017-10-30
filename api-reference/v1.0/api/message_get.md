# Get message

Retrieve the properties and relationships of a [message](../resources/message.md) object.

Since the **message** resource supports [extensions](../../../concepts/extensibility_overview.md), you can also use the `GET` operation to get custom properties and extension data in a **message** instance.

Currently, this operation returns message bodies in only HTML format.


### Get messages in another user's message folder

If you have application permissions, or if you have the appropriate delegated [permissions](#permissions) from one user, it's possible to get messages 
from another user's message folder. This section focuses on scenarios that involve delegated permissions.

For example, your app has acquired delegated permissions from the user, John. Suppose another user, Garth, has shared a message folder with John. 
You can get a message in that shared folder by specifying Garth’s user ID (or user principal name) in the example query shown below.

<!-- { "blockType": "ignored" } -->
```http
GET /users/{Garth-id | Garth-userPrincipalName}/messages/{id}
```

This capability applies to all the supported GET messages operations for an individual user, as listed in the [HTTP request](#http-request) section below. 
It also applies if Garth has delegated his entire mailbox to John.

If Garth has not shared his message folder with John, nor has he delegated his mailbox to John, specifying Garth’s user ID or user principal name in those GET operations 
will return an error. In such cases, specifying a user ID or user principal name only works for getting a message in the signed-in user’s own message folders, 
and the query is equivalent to using the /me shortcut:

<!-- { "blockType": "ignored" } -->
```http
GET /me/messages/{id}
```

This capability is available in only GET operations of:

- Shared contact folders, calendars, and message folders 
- Contacts, events, and messages in shared folders
- The above resources in delegated mailboxes

This capability is not available in other operations for contacts, events, messages, and their folders.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Mail.Read    |
|Delegated (personal Microsoft account) | Mail.Read    |
|Application | Mail.Read |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/messages/{id}
GET /users/{id | userPrincipalName}/messages/{id}
GET /me/mailFolders/{id}/messages/{id}
GET /users/{id | userPrincipalName}/mailFolders/{id}/messages/{id}
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

If successful, this method returns a `200 OK` response code and [message](../resources/message.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_message"
}-->
```http
GET https://graph.microsoft.com/v1.0/me/messages/{id}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.message"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 248

{
  "receivedDateTime": "datetime-value",
  "sentDateTime": "datetime-value",
  "hasAttachments": true,
  "subject": "subject-value",
  "body": {
    "contentType": "html",
    "content": "content-value"
  },
  "bodyPreview": "bodyPreview-value"
}
```

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions (preview)](../../../concepts/extensibility_open_users.md)
<!--
- [Add custom data to groups using schema extensions (preview)](../../../concepts/extensibility_schema_groups.md)
-->


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get message",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
