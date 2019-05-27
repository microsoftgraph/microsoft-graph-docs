---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("select", "siteCollection,webUrl"),
	new QueryOption("filter", "siteCollection/root ne null")
};

var sites = await graphClient.Sites
	.Request( queryOptions )
	.Filter("siteCollection/root ne null")
	.GetAsync();

```