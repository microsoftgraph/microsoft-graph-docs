---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userSource = new UserSource
{
	Email = "megan@contoso.com",
	IncludedSources = SourceType.Mailbox | SourceType.Site
};

await graphClient.Compliance.Ediscovery.Cases["4c8f8f70-7785-4bd4-b296-c98376a2c5e1"].Custodians["2192ca408ea2410eba3bec8ae873be6b"].UserSources
	.Request()
	.AddAsync(userSource);

```