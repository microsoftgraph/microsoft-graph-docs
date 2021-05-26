---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var appliesTo = await graphClient.Policies.TokenLifetimePolicies["{tokenLifetimePolicy-id}"].AppliesTo
	.Request()
	.GetAsync();

```