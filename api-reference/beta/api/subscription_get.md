# Get subscription

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the properties and relationships of a subscription.
## Prerequisites

The following table lists the suggested permission needed for each resource.

| Resource type / Item        | Scope               |
|-----------------------------|---------------------|
| Contacts                    | Contacts.Read       |
| Conversations               | Group.Read.All      |
| Events                      | Calendars.Read      |
| Messages                    | Mail.Read           |
| Groups                      | Group.Read.All      |
| Users                       | User.Read.All       |
| Drive  (User's OneDrive)    | Files.ReadWrite     |
| Drives (Sharepoint shared content and drives) | Files.ReadWrite.All |

***Note:*** The /beta endpoint allows application permissions for most resources. Conversations in a Group and OneDrive drive root items are not supported with Application permissions.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /subscriptions/{id}
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

If successful, this method returns a `200 OK` response code and [subscription](../resources/subscription.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_subscription"
}-->
```http
GET https://graph.microsoft.com/beta/subscriptions/{id}
```
##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.subscription"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 252

{
  "id":"7f105c7d-2dc5-4530-97cd-4e7ae6534c07",
  "resource":"me/messages",
  "changeType":"created,updated",
  "clientState":"subscription-identifier",
  "notificationUrl":"https://webhook.azurewebsites.net/api/send/myNotifyClient",
  "expirationDateTime":"2016-11-20T18:23:45.9356913Z"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
