---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarGroup = new CalendarGroup
{
	Name = "name-value",
	ClassId = Guid.Parse("classId-value"),
	ChangeKey = "changeKey-value"
};

await graphClient.Me.CalendarGroups
	.Request()
	.AddAsync(calendarGroup);

```