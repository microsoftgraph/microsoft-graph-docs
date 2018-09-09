# Working with Calls in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The Calling APIs enables you to create calls and receive calls from users in Skype and Microsoft Teams. Here are list of calling scenarios supported by these APIs.

- Ad-Hoc two party calling
- Ad-Hoc multi party calling
- Meet Now
- Calling into Private meetings
- Calling into Microsoft Teams meetings
- IVR Scenarios

Before you get started with trying out the Calling API, it is worth understanding your media processing requirements.

## MediaPaaS

Media processing is managed through Microsoft Media Platform (MediaPaaS). MediaPaaS helps Bots engage in Skype/Teams audio/video calls and conferences.  It allows real-time bots to participate in both 1:1 and group/multiparty calls​.
- Direct (**application media**) media bot calls: developers can build real-time bots using the SmartAgents API and have access to direct media I/O​. Also known as the [Bots Media Library](https://docs.microsoft.com/en-us/bot-framework/dotnet/bot-builder-dotnet-real-time-media-concepts), it helps you build rich real-time media calling bots.  Developers host the smart agents library and media processor.
- Remote media (**service media**) bot calls: developers can manage the workflow but offload media hosting to MediaPaaS/IVR​.

## SDK
Calling APIs may be used directly by the **service media** bot.  In these cases, the Bot is usually _Stateless_ and does not process media locally.

[Graph Calling SDK](https://graphcallingsdk-docs.azurewebsites.net/index.html) is provided to simplify the creation of bots. The SDK provides functionality to manage the states of the resources in memory and to pull in bot developers' media stack. The Media Extension allows the bot developers to host the media locally and gain access to the low level audio-video sockets.

# Bot Service
- Register your bot in the [Bot Services](https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart) in azure portal and save the Microsoft AppId and Password as entered in it.
- Add the Skype channel and the settings required for that. You would select your media type to be `Local Media - Real Time Media` in the settings. You also provide a webhook where we would contact you for the incoming Call notifications.

## Permissions

## Registration and Provisioning
Please contact [Graph Platform Champs](mailto:sbsplatchamps@microsoft.com) with your business reason, bot application id and the list of `tenant ids` that your bot would be accessing for provisioning. This is a temporary flow before the [Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles) in Azure is ready.

# Calls
[Application](./Application.md) is used for creating a new call by posting to the calls collection.
[Call](./Call.md) provides APIs to manage a call.

# Testing

Bots can be tested locally using tunneling services like [Ngrok](https://ngrok.com) and following some setup. See the [testing](../../../concepts/testing.md) to learn more.

# Samples

Samples are hosted in [VSTS](https://sampleapps-microsoftteams.visualstudio.com/_git/CVIBot) and you can get started by reading the [README](https://sampleapps-microsoftteams.visualstudio.com/_git/CVIBot?path=%2FLocalMediaSampleBot%2FREADME.md&version=GBmaster) file.