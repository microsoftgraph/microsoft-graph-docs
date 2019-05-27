---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("format", "{format}")
};

var items = await graphClient.Drive.Items["{item-id}"]
	.Request( queryOptions )
	.Select( e => new {
			 e.Content 
			 })
	.GetAsync();

var content = items.Content;

```