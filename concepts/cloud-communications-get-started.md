---
title: "Get started with cloud communications"
description: "Learn how you can use bots to respond to your customers' needs and facilitate collaboration."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Get started with cloud communications

The cloud communications APIs in Microsoft Graph add a new dimension to how your apps and services interact with users through various communications related features, such as calling and online meetings. This article describes how you can use bots to respond to your customers' needs and facilitate collaboration.

## Prerequisites

Beore  you get started, it will be helpful to familiarize yourself with the following:

- [Azure Active Directory](/azure/active-directory/fundamentals/active-directory-whatis)
(Azure AD) and how the service helps employees sign in and access resources.
- The [Azure Bot Service](/azure/bot-service/bot-service-overview-introduction?view=azure-bot-service-3.0) and its capabilities.

## Register a bot

The terms "service application" and "bot" can be used interchangeably. You can either create a bot through the [Azure portal](https://azure.microsoft.com/features/azure-portal/) directly or register a bot that isn't hosted on Azure. 
For more details about the bot registration process, see [Registering a calling bot](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/register-calling-bot.html). 

To make things easier later, it's helpful to understand the different [types of permissions](/azure/active-directory/develop/v1-permissions-and-consent#types-of-permissions) within Azure AD. Apps with delegated permissions require a signed-in user. Application-based permissions don't need a signed-in user, and can often run as a background service.

After you register your bot, if you'd like to [add your bot to Microsoft Teams](/microsoftteams/platform/concepts/calls-and-meetings/registering-calling-bot), make sure you understand how to use [app studio](/microsoftteams/platform/get-started/get-started-app-studio) and define the required metadata.

## Manage the state of the bot

After you register your bot, decide whether you want your audio and video-based media to be [application-hosted or service-hosted](cloud-communications-media.md). At a high level, this involves deciding whether or not you want to access a live-stream of raw media.

Next, you can decide whether it's best for your bot to be [stateful or stateless](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/StateManagement.html).

### Stateless bots

Any virtual machine can handle any bot instance, which means that if one machine goes down, another can take care of it. This makes for a resilient solution.

On the other hand, a shared cache, such as REDIS, needs to be accessible to all the virtual machines.

### Stateful bots

A virtual machine can handle only one bot instance at a time. Because all the states are on one machine, there aren't any extra memory checks or REDIS cache checks.

The drawback is that because the bot instance is just on one machine, it isn't as resilient.

>**Note:** Service-hosted media bots can be stateful or stateless. Application-hosted media bots must be stateful in order to use the [Bot Media SDK](https://www.nuget.org/packages/Microsoft.Skype.Bots.Media).

## Use the SDKs

The following SDKs are available in C#. We will provide support for other languages in the future.

- If you're using **stateless** bots, install the [Graph Communications Core SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Core).
- If you're using **stateful** bots, install the [Graph Communications Calling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls).

## Examples

Learn how to implement different scenarios using stateful bots, such as [answering an incoming call](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/index.html#example-incoming-calls) with either application-hosted or service-hosted media.

For more examples, see the [Communications samples repository](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/index.html).