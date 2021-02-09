---
title: "Create and send a notification from your app service"
description: "Setup your application service to send user-centric notifications to various clients via the Microsoft Graph. "
localization_priority: Priority
ms.prod: "notifications"
author: "merzink"
---


# Create and send a notification from your app service

You can create and send a notification to a user by using Microsoft Graph APIs. The notification is stored in the Microsoft Graph Notifications service store and is sent to all app clients on all devices that the target user is signed in on. 

In order to send a notification to your user, your application service will:
1. [Authenticate](/azure/active-directory/develop/v1-oauth2-client-creds-grant-flow) with the Microsoft identity platform.
2. Post a notification to the Microsoft Graph API using the auth token, and target the user with a [user notification subscription ID](/graph/api/notifications-post) that is obtained from your app client when creating a subscription.

> [!NOTE]
> For a simplified authentication story, we recommend using the new and improved, lightweight [notification SDK](https://aka.ms/GNSDK) on the client-side with a user notification subscription ID to receive notifications and manage notification state. Alternatively, you can  post notifications on behalf of the user via delegated permissions and your app service will need to maintain access tokens and refresh tokens, but this is not recommended. To learn more about OAuth 2.0 OBO flow, see [Service-to-service calls that use delegated user identity in the On-Behalf-Of flow](/azure/active-directory/develop/v1-oauth2-on-behalf-of-flow). 


## Guaranteed delivery on iOS

On platforms like iOS, under certain power conditions, raw data notifications might be delayed in delivery due to batching, or not reach the target endpoint at all. For high-priority notifications being delivered to users on iOS, the Microsoft Graph notifications platform allows you to specify a raw-to-visual toast notification "fallback" option that automatically sends a visual toast notification to the target iOS device, thereby ensuring your user gets notified near real-time. To learn how to leverage fallback options, please see the [notification resource](/graph/api/resources/projectrome-notification.md).  

## Getting started
To learn how your app service can start sending notifications to your users, see [notification](/graph/api/resources/projectrome-notification) and our [App Service sample](https://aka.ms/gnsample-appservice).