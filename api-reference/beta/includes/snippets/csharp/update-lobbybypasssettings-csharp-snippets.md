---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeeting = new OnlineMeeting
{
	LobbyBypassSettings = new LobbyBypassSettings
	{
		IsDialInBypassEnabled = true
	}
};

await graphClient.Me.OnlineMeetings["{onlineMeeting-id}"]
	.Request()
	.UpdateAsync(onlineMeeting);

```