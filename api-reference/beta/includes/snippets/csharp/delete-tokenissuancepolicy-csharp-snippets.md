---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Policies.TokenIssuancePolicies["{tokenIssuancePolicy-id}"]
	.Request()
	.DeleteAsync();

```