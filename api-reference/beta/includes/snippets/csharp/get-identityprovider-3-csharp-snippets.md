---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityProviders = await graphClient.IdentityProviders
	.Request()
	.GetAsync();

```