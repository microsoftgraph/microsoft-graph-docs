---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tokenIssuancePolicy = await graphClient.Policies.TokenIssuancePolicies["{tokenIssuancePolicy-id}"]
	.Request()
	.GetAsync();

```