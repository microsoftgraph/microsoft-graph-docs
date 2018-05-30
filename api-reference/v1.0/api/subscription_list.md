# List subscriptions

Retrieve the properties and relationships of webhook subscriptions, based on the app ID, the user, and the user's role with a tenant.

## Permissions

This API supports the following permission scopes; to learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type  | Permissions (from least to most privileged)  |
|:---------------- |:-------------------------------------------- |
| [Delegated](../../../concepts/auth_v2_user.md) (work or school account) | Role required to [create subscription](subscription_get.md) or Subscriptions.Read.All (see below). |
| [Delegated](../../../concepts/auth_v2_user.md) (personal Microsoft account) | Role required to [create subscription](./subscription_get.md) or Subscriptions.Read.All (see below). |
| [Application](../../../concepts/auth_v2_service.md) | Role required to [create subscription](./subscription_get.md). |

Response results are based on the context of the calling app, which includes:

- The permission type, e.g. whether the application is making request for itself (application permission) or a delegated request on behalf of a user.
- For delegated permissions requiring admin access, whether the user has granted the app the Subscriptions.Read.All scope permission when requested.
- Whether the user account is an Azure AD account (work or school) or a personal Microsoft account.
- For Azure AD user accounts, whether the user is an administrator of the tenant (based on current role settings).

The following table shows the context required for common tasks:

| Task | Required Context |
|:-----|:---------------- |
| Retrieve the subscriptions the current app has made on behalf of the current user (work/school account). | Delegated permission.<br/><br/>Role required to [create subscription](subscription_get.md); user can be admin or non-admin.|
| Retrieve the subscriptions the current app has made within a tenant for itself or for any user. | Application permission.<br /><br />Subscription.Read.All scope for admin work/school account. |
| Retrieve the subscriptions that any app has made on behalf of the current user. | Delegated permission.<br /><br/>Subscriptions.Read.All permission required.|
| Retrieve all subscriptions within a given tenant, regardless of app or user (highly privileged operation). | Delegated permission (requires admin user).<br /><br/>Subscription.Read.All required. |
| Retrieve subscriptions made by the current app for a personal account user. | Delegated permission.<br /><br/>Role required to [create subscription](subscription_get.md).| 
| Retrieve all subscriptions for a personal Microsoft account, regardless of app. | Delegated permission.<br /><br/>Subscriptions.Read.All for personal account. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /subscriptions
```
## Optional query parameters
This method does not support the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.

## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [subscription](../resources/subscription.md) objects in the response body.
## Example
##### Request
<!-- {
  "blockType": "request",
  "name": "get_subscriptions"
}-->
```http
GET https://graph.microsoft.com/v1.0/subscriptions
```
##### Response
Here's an an example of the response.  Note that it may be truncated for brevity.  All supported properties appropriate for the request and the calling context will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.subscription",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 586

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#subscriptions",
    "value": [
        {
            "id": "0fc0d6db-0073-42e5-a186-853da75fb308",
            "resource": "Users",
            "applicationId": "24d3b144-21ae-4080-943f-7067b395b913",
            "changeType": "updated,deleted",
            "clientState": null,
            "notificationUrl": "https://webhookappexample.azurewebsites.net/api/notifications",
            "expirationDateTime": "2018-03-12T05:00:00Z",
            "creatorId": "8ee44408-0679-472c-bc2a-692812af3437"
        }
    ]
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List subscriptions",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
When a request returns multiple pages of data, the response includes an `@odata.nextLink` property to help you manage the results.  To learn more, see [Paging Microsoft Graph data in your app](../../../concepts/paging.md). 
