---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("search", "{query}")
};

var sites = await graphClient.Sites
	.Request( queryOptions )
	.GetAsync();

```