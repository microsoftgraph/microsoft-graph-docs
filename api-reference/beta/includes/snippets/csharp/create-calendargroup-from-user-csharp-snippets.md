---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarGroup = new CalendarGroup
{
	Name = "Personal events"
};

await graphClient.Me.CalendarGroups
	.Request()
	.AddAsync(calendarGroup);

```