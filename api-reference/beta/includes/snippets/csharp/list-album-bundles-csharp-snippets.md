---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("filter", "bundle/album ne null")
};

var bundles = await graphClient.Drive.Bundles
	.Request( queryOptions )
	.Filter("bundle/album ne null")
	.GetAsync();

```