---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @event = await graphClient.Me.Events["AAMkADAGAADDdm4NAAA="]
	.Request()
	.Select( e => new {
			 e.Subject,
			 e.Body,
			 e.BodyPreview,
			 e.Organizer,
			 e.Attendees,
			 e.Start,
			 e.End,
			 e.Location,
			 e.Locations 
			 })
	.GetAsync();

```