---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startDateTime", "2017-01-01T19:00:00-08:00"),
	new QueryOption("endDateTime", "2017-01-07T19:00:00-08:00")
};

var calendarView = await graphClient.Me.Calendar.CalendarView
	.Request( queryOptions )
	.GetAsync();

```