---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authenticationFlowsPolicy = await graphClient.Policies.AuthenticationFlowsPolicy
	.Request()
	.GetAsync();

```