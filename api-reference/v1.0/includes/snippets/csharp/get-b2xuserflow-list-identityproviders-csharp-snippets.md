---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviders = await graphClient.Identity.B2xUserFlows["{b2xIdentityUserFlow-id}"].IdentityProviders
	.Request()
	.GetAsync();

```