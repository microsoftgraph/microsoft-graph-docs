---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.IdentityProviders["{identityProviderBase-id}"]
	.Request()
	.DeleteAsync();

```