---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies.TokenLifetimePolicies["{tokenLifetimePolicy-id}"]
	.Request()
	.DeleteAsync();

```