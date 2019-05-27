---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("expand", "fields(select=Name,Color,Quantity)")
};

var items = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Request( queryOptions )
	.GetAsync();

```