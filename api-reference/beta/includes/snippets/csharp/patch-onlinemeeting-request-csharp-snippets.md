---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onlineMeeting = new OnlineMeeting
{
	StartDateTime = DateTimeOffset.Parse("2020-09-09T21:33:30.8546353+00:00"),
	EndDateTime = DateTimeOffset.Parse("2020-09-09T22:03:30.8566356+00:00"),
	Subject = "Patch Meeting Subject"
};

await graphClient.Me.OnlineMeetings["{id}"]
	.Request()
	.UpdateAsync(onlineMeeting);

```