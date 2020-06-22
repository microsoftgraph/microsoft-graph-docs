---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Events["AAMkADAGu0AABIGYDZAAA="]
	.Request()
	.Select("isOnlineMeeting,onlineMeetingProvider,onlineMeeting")
	.GetAsync();

```