---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var term = new Term
{
	Labels = new List<LocalizedLabel>()
	{
		new LocalizedLabel
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