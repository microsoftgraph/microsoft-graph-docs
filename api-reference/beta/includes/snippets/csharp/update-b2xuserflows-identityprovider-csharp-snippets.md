---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProvider = new IdentityProvider
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/identityProviders/{id}"}
	}
};

await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].IdentityProviders.References
	.Request()
	.AddAsync(identityProvider);

```