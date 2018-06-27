# List subscriptions

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve a list of webhook subscriptions. The content of the response depends on the context in which the app is calling; see the scenarios below for details.

## Permissions

This API supports the following permission scopes; to learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type  | Permissions (from least to most privileged)  |
|:---------------- |:-------------------------------------------- |
| [Delegated](../../../concepts/auth_v2_user.md) (work or school account) | Permission required to [create subscription](subscription_post_subscriptions.md) or Subscription.Read.All (see below). |
| [Delegated](../../../concepts/auth_v2_user.md) (personal Microsoft account) | Permission required to [create subscription](subscription_post_subscriptions.md) or Subscription.Read.All (see below). |
| [Application](../../../concepts/auth_v2_service.md) | Permission required to [create subscription](subscription_post_subscriptions.md). |

Response results are based on the context of the calling app. The following is a summary of the common scenarios:

### Basic scenarios

Most commonly, an application wants to retrieve subscriptions that it originally created for the currently signed-in user, or for all users in the directory (work/school accounts). These scenarios do not require any special permissions beyond the ones the app used originally to create its subscriptions.

| Context of the calling app | Response contains |
|:-----|:---------------- |
| App is calling on behalf of the signed-in user (delegated permission). <br/>-and-<br/>App has the original permission required to [create the subscription](subscription_post_subscriptions.md).<br/><br/>Note: This applies to both personal Microsoft accounts and work/school accounts. | Subscriptions created by **this app** for the signed-in user only. |
| App is calling on behalf of itself (application permission).<br/>-and-<br/>App has the original permission required to [create the subscription](subscription_post_subscriptions.md).<br/><br/>Note: This applies to work/school accounts only.| Subscriptions created by **this app** for itself or for any user in the directory.|

### Advanced scenarios

In some cases, an app wants to retrieve subscriptions created by other apps. For example, a user wants to see all subscriptions created by any app on their behalf. Or, an administrator may want to see all subscriptions from all apps in their directory.
For such scenarios, a delegated permission Subscription.Read.All is required.

| Context of the calling app | Response contains |
|:-----|:---------------- |
| App is calling on behalf of the signed-in user (delegated permission). *The user is a non-admin*. <br/>-and-<br/>App has the permission Subscription.Read.All<br/><br/>Note: This applies to both personal Microsoft accounts and work/school accounts. | Subscriptions created by **any app** for the signed-in user only. |
| App is calling on behalf of the signed-in user (delegated permission). *The user is an admin*.<br/>-and-<br/>App has the permission Subscription.Read.All<br/><br/>Note: This applies to work/school accounts only. | Subscriptions created by **any app** for **any user** in the directory.|

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
GET https://graph.microsoft.com/beta/subscriptions
```

##### Response

Here is an example of the response. Note: The response shown here may be truncated for brevity. All of the properties will be returned from an actual call.

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions",
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
