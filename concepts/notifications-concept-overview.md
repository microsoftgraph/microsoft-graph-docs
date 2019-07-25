---
title: "Enabling human-centric notification experiences using Microsoft Graph notifications "
description: "Notifications are one of the most effective ways to re-engage with users of your application. A great notification experience can help open a near real-time communication channel between you and your application users, that in turn can increase app engagement at the right time, assist users with being more productive and alert them of important events or timely actions that may be required. "
localization_priority: Priority
ms.prod: "notifications"
---

# Enabling human-centric notification experiences using Microsoft Graph notifications

Notifications are one of the most effective ways to reengage with your application users. A great notification experience can help open a near real-time communication channel between you and your users, and that in turn can increase app engagement at the right time, make users more productive, and alert them to important events or required actions.

> [!VIDEO https://www.youtube-nocookie.com/embed/cmpPFhrS8ZA]

Today, users can access your applications and services via a wide variety of platforms and form factors. This mix of devices requires that you understand and support multiplatform notification systems, map users to endpoints, and maintain notification state across devices. 

Most other notification systems eliminate the need to understand and target platform-specific push notification systems, but are still  designed to target each device. Microsoft Graph notifications provide a human-centric approach that gives you the ability to target your  users across any and all device endpoints.

![An image that shows an app service communicating with Microsoft Graph to send notifications to multiple endpoints](images/notifications-flow-overview.png)

## Why integrate with Microsoft Graph notifications?

Microsoft Graph notifications provide a user-centric notification platform that brings four key benefits to your applications.

### Effortlessly target your user for notification delivery across different endpoints

You can use the notifications API to target a personal Microsoft account or a work or school Azure Active Directory (Azure AD) account to deliver notifications. The platform distributes this notification to all user endpoints running your application or service, including Windows UWP, Android, and iOS. This capability helps maximize outreach by ensuring appropriate notifications can reach your target, wherever they are.

### Easily manage notifications across endpoints

Using the [Microsoft Graph notifications client SDK](https://github.com/microsoft/project-rome) within your client application, you can update the state of a notification and sync that state across all endpoints. For example, when a user acts on a notification on one device, you can update the state of this notification (such as marking it as read or dismissed), and the same state change will be distributed to all other endpoints. The Microsoft Graph notifications API tracks the state of your user’s notifications in a centralized way, making it easy for you to ensure that your notifications are handled once, and dismissed everywhere, thereby minimizing redundancy and ensuring a great customer experience.

### Retrieve notification state and history

You can use the notifications API to retrieve notification history based on an expiration time you define (up to 30 days). Notifications that are marked as read or dismissed are still retrievable from the history, enabling in-app views of notification history as well as enabling you to build on insights and intelligence.

### Privacy and compliance

Microsoft Graph notifications meet most enterprise compliance requirements, including ISO 27001, ISO 27018, EUMC, HIPAA, SOC 1, SOC 2, and of course GDPR.

## How do I get started?

To get started, see the [integration overview](notifications-integration-e2e-overview.md) section to learn how you can integrate user-centric notifications within your application.
