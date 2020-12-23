---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = new Calendar
{
	Name = "Marketing calendar"
};

await graphClient.Me.CalendarGroups["AAMkADYAAAR9NR5AAA="].Calendars
	.Request()
	.AddAsync(calendar);

```