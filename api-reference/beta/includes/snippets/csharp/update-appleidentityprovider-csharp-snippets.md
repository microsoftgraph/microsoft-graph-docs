---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviderBase = new IdentityProviderBase
{
	DisplayName = "Apple"
};

await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"]
	.Request()
	.UpdateAsync(identityProviderBase);

```