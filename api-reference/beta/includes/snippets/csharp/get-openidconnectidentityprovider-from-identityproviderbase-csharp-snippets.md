---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviderBase = await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"]
	.Request()
	.GetAsync();

```