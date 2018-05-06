# subscription resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

A subscription allows a client app to receive notifications about changes to data on the Microsoft Graph. Currently, subscriptions are enabled for the following datasets:

1. Mail, events, and contacts from Outlook.
1. Conversations from Office Groups.
1. Drive root items from OneDrive.
1. Users and Groups from Azure Active Directory.


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.subscription"
}-->

```json
{
  "changeType": "string",
  "notificationUrl": "string",
  "resource": "string",
  "applicationId" : "string",
  "expirationDateTime": "String (timestamp)",
  "id": "string (identifier)",
  "clientState": "string",
  "creatorUserId": "string"
}

```
## Properties

| Property           | Type           | Description                                                                                                                                                                                                                                                                                                                                                      |
|:-------------------|:---------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| changeType         | string         | Indicates the type of change in the subscribed resource that will raise a notification. The supported values are: `created`, `updated`, `deleted`. Multiple values can be combined using a comma-separated list. Drive root Item notifications require the use of `updated` only.                                                                                                                                                 |
| notificationUrl    | string         | The URL of the endpoint that will receive the notifications. This URL has to make use of the HTTPS protocol.                                                                                                                                                                                                                                                     |
| resource           | string         | Specifies the resource that will be monitored for changes. Do not include the base URL (`https://graph.microsoft.com/{version}/`).                                                                                                                                                                                                                               |
| expirationDateTime | DateTimeOffset | Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to.  See the table below for maximum supported subscription length of time.                                                                                                                              |
| clientState        | string         | Specifies the value of the `clientState` property sent by the service in each notification. The maximum length is 255 characters. The client can check that the notification came from the service by comparing the value of the `clientState` property sent with the subscription with the value of the `clientState` property received with each notification. |
| id                 | string         | Unique identifier for the subscription. Read-only.                                                                                                                                                                                                                                                                                                               |
| applicationId      | string         | Identifier of the application used to create the subscription. |
| creatorUserId      | string         | Identifier of the user or service principal that created the subscription.<br/><br/>If the app used delegated permissions to create the subscription, this field contains the id of the signed-in user the app called on behalf of.<br/>If the app used application permissions, this field contains the id of the service principal corresponding to the app.<br/><br/> **Note:** We will soon rename this property to *creatorId* in order to more precisely reflect its meaning. |


## Maximum length of subscription per resource type

| Resource            | Maximum Expiration Time |
|:--------------------|:------------------------|
| Mail                | 4230 minutes.           |
| Calendar            | 4230 minutes.           |
| Contacts            | 4230 minutes.           |
| Group conversations | 4230 minutes.           |
| Drive root items    | 43200 minutes. Existing applications and new applications should not exceed the supported value. Higher values won't be permitted in upcoming releases. |

## Relationships
None


## Methods

| Method                                                           | Return Type                     | Description                                                                                   |
|:-----------------------------------------------------------------|:--------------------------------|:----------------------------------------------------------------------------------------------|
| [Create subscription](../api/subscription_post_subscriptions.md) | [subscription](subscription.md) | Subscribes a listener application to receive notifications when Microsoft Graph data changes. |
| [Update subscription](../api/subscription_update.md)             | [subscription](subscription.md) | Renew a subscription by updating its expiration time.                                         |
| [List subscriptions](../api/subscription_list.md)                | [subscription](subscription.md) | Lists active subscriptions. |
| [Get subscription](../api/subscription_get.md)                   | [subscription](subscription.md) | Read properties and relationships of subscription object.                                     |
| [Delete subscription](../api/subscription_delete.md)             | None                            | Delete a subscription object.                                                                 |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "subscription resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
