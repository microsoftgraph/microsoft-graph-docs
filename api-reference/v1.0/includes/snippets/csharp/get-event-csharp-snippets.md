---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Events["{event-id}"]
	.Request()
	.Header("Prefer","outlook.timezone=\"Pacific Standard Time\"")
	.Select("subject,body,bodyPreview,organizer,attendees,start,end,location,hideAttendees")
	.GetAsync();

```