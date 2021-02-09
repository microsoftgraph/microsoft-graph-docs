---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var term = new Microsoft.Graph.TermStore.Term
{
	Labels = new List<Microsoft.Graph.TermStore.LocalizedLabel>()
	{
		new Microsoft.Graph.TermStore.LocalizedLabel
		{
			LanguageTag = "en-US",
			Name = "Car",
			IsDefault = true
		}
	}
};

await graphClient.TermStore.Sets["{setId}"].Terms
	.Request()
	.AddAsync(term);

```