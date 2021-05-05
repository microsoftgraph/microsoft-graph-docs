---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarGroup = new CalendarGroup
{
	Name = "name-value"
};

await graphClient.Me.CalendarGroups["{calendarGroup-id}"]
	.Request()
	.UpdateAsync(calendarGroup);

```