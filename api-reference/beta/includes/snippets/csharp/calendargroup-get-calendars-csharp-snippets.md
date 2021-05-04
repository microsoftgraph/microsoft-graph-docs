---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendars = await graphClient.Me.CalendarGroups["{calendarGroup-id}"].Calendars
	.Request()
	.GetAsync();

```