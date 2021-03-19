---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OnlineMeeting onlineMeeting = new OnlineMeeting();
LobbyBypassSettings lobbyBypassSettings = new LobbyBypassSettings();
lobbyBypassSettings.isDialInBypassEnabled = true;
onlineMeeting.lobbyBypassSettings = lobbyBypassSettings;

graphClient.me().onlineMeetings("MSpkYzE3Njc0Yy04MWQ5LTRhZGItYmZi")
	.buildRequest()
	.patch(onlineMeeting);

```