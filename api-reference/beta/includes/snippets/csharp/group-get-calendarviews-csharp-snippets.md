---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startDateTime", "2017-01-01T19:00:00-08:00"),
	new QueryOption("endDateTime", "2017-10-01T19:00:00.00-08:00")
};

var calendarView = await graphClient.Groups["{group-id}"].CalendarView
	.Request( queryOptions )
	.Header("Prefer","outlook.body-content-type=\"text\"")
	.GetAsync();

```