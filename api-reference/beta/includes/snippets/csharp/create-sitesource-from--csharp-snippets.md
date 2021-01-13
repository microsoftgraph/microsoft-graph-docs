---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var siteSource = new SiteSource
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"site@odata.bind", "https://graph.microsoft.com/v1.0/sites/{siteId}"}
	}
};

await graphClient.Compliance.Ediscovery.Cases["4c8f8f70-7785-4bd4-b296-c98376a2c5e1"].Custodians["2192ca408ea2410eba3bec8ae873be6b"].SiteSources
	.Request()
	.AddAsync(siteSource);

```