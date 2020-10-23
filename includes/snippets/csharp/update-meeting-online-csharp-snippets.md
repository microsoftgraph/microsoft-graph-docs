---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = new Event
{
	IsOnlineMeeting = true,
	OnlineMeetingProvider = OnlineMeetingProviderType.TeamsForBusiness
};

await graphClient.Me.Events["AAMkADAGu0AABIGYDaAAA="]
	.Request()
	.UpdateAsync(@event);

```