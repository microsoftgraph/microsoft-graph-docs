---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = new Calendar
{
	Name = "Volunteer"
};

await graphClient.Me.Calendars
	.Request()
	.AddAsync(calendar);

```