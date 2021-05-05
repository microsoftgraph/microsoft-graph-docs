---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Applications["{application-id}"].TokenIssuancePolicies["{tokenIssuancePolicy-id}"].Reference
	.Request()
	.DeleteAsync();

```