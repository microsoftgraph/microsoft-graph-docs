---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProvider = new IdentityProvider
{
	Name = "Login with Amazon",
	Type = "Amazon",
	ClientId = "56433757-cadd-4135-8431-2c9e3fd68ae8",
	ClientSecret = "000000000000"
};

await graphClient.IdentityProviders
	.Request()
	.AddAsync(identityProvider);

```