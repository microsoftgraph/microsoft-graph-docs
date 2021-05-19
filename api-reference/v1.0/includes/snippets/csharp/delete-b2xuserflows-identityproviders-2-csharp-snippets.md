---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].IdentityProviders["{identityProvider-id}"].Reference
	.Request()
	.DeleteAsync();

```