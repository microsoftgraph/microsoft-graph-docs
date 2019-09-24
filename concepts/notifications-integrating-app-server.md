---
title: "Create and send a notification from your app service"
description: "Setup your application service to send user-centric notifications to various clients via the Microsoft Graph. "
localization_priority: Priority
ms.prod: "notifications"
---


# Create and send a notification from your app service

You can create and send a notification to a user by using Microsoft Graph APIs. The notification is stored in the activity feed store and is sent to all app clients on all devices that the target user is signed in on. 

## Authentication

Microsoft Graph notifications requires that your application service uses the On-Behalf-Of (OBO) flow to post a notification to a user. The following is the authentication flow:

1.  The user signs in to your application with their Microsoft or their work or school account. When they sign in, the identity service gives you an access token.

2.  You send the access token to your app service.

3.  You app service authenticates against the identity service and requests an OBO token for Microsoft Graph notifications.

4.  The identity service returns an OBO-based token and a refresh token. Your app service can use this access token to post notifications to this user.

To learn more about OAuth 2.0 OBO flow, see [Service-to-service calls that use delegated user identity in the On-Behalf-Of flow](https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-oauth2-on-behalf-of-flow). For details about how this flow works with Microsoft Graph notifications, see the [App Service sample](https://aka.ms/gnsample-appservice).

> [!NOTE]
> Microsoft Graph notifications currently uses OBO authentication flow with future plans to simplify this authentication further and eliminate the need to maintain access tokens and refresh tokens.

For more details on the API permissions and on the request and response headers, please see [Create and send a notification](/graph/api/notifications-post) in the API reference section. 
