---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startdatetime", "2016-12-01T00:00:00Z"),
	new QueryOption("enddatetime", "2016-12-30T00:00:00Z")
};

var delta = await graphClient.Me.CalendarView
	.Delta()
	.Request( queryOptions )
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```