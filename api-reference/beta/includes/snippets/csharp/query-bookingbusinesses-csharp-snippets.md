---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("query", "Adventure")
};

var bookingBusinesses = await graphClient.BookingBusinesses
	.Request( queryOptions )
	.GetAsync();

```