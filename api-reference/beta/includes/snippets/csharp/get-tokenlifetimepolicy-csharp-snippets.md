---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tokenLifetimePolicy = await graphClient.Policies.TokenLifetimePolicies["{tokenLifetimePolicy-id}"]
	.Request()
	.GetAsync();

```