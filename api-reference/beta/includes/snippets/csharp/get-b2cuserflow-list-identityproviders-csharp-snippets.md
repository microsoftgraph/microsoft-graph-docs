---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviders = await graphClient.Identity.B2cUserFlows["{b2cIdentityUserFlow-id}"].IdentityProviders
	.Request()
	.GetAsync();

```