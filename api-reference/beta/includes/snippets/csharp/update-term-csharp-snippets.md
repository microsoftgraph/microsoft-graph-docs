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
			Name = "changedLabel",
			LanguageTag = "en-US",
			IsDefault = true
		}
	}
};

await graphClient.TermStore.Sets["{setId}"].Terms["{termId}"]
	.Request()
	.UpdateAsync(term);

```