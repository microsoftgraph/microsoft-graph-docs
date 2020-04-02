---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startdatetime", "{start_datetime}"),
	new QueryOption("enddatetime", "{end_datetime}")
};

var delta = await graphClient.Me.CalendarView
	.Delta()
	.Request( queryOptions )
	.GetAsync();

```