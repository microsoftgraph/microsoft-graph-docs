# Update subscription

Renew a subscription by extending its expiry time.

Subscriptions to resources expire at dates proscribed by the individual resource types.  In order not to miss notifications, subscriptions should be renewed well in advance of their expiry date.  See [subscription](../resources/subscription.md) for individual expiry dates.

## Prerequisites

The following table lists the suggested permission needed for each resource.

| Resource type / Item        | Scope               |
|-----------------------------|---------------------|
| Contacts                    | Contacts.Read       |
| Conversations               | Group.Read.All      |
| Events                      | Calendars.Read      |
| Messages                    | Mail.Read           |
| Drive  (User's OneDrive)    | Files.ReadWrite     |
| Drives (Sharepoint shared content and drives) | Files.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /subscriptions/{subscriptionId}
```

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and [subscription](../resources/subscription.md) object in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_subscription"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/subscriptions/{subscriptionId}
Content-type: application/json

{
   "expirationDateTime":"2016-11-22T18:23:45.9356913Z"
}
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
  "expirationDateTime":"2016-11-22T18:23:45.9356913Z"
}
```


<!-- {
  "type": "#page.annotation",
  "description": "Update subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
