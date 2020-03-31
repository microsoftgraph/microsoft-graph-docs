---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("format", "{format}")
};

var stream = await graphClient.Drive.Items["{item-id}"].Content
	.Request( queryOptions )
	.GetAsync();

```