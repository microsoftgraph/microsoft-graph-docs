---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProvider = new IdentityProvider
{
	ClientSecret = "1111111111111"
};

await graphClient.IdentityProviders["{identityProvider-id}"]
	.Request()
	.UpdateAsync(identityProvider);

```