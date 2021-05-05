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
			Name = "changedLabel",
			LanguageTag = "en-US",
			IsDefault = true
		}
	}
};

await graphClient.TermStore.Sets["{termStore.set-id}"].Terms["{termStore.term-id}"]
	.Request()
	.UpdateAsync(term);

```