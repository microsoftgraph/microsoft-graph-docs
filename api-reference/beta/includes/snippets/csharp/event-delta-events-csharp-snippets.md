---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("startDateTime", "2020-06-12T00:00:00Z")
};

var delta = await graphClient.Me.Calendar.Events
	.Delta()
	.Request( queryOptions )
	.GetAsync();

```