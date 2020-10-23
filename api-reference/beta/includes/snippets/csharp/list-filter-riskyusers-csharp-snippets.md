---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var riskyUsers = await graphClient.IdentityProtection.RiskyUsers
	.Request()
	.Filter("riskLevel eq microsoft.graph.riskLevel'medium'")
	.GetAsync();

```