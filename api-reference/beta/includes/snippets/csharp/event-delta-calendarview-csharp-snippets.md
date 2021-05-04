---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startDateTime", "2020-06-01T00:00:00Z"),
	new QueryOption("endDateTime", "2020-06-10T00:00:00Z")
};

var delta = await graphClient.Me.Calendars["{calendar-id}"].CalendarView
	.Delta()
	.Request( queryOptions )
	.GetAsync();

```