---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var authorizationPolicy = new AuthorizationPolicy
{
	BlockMsolPowerShell = true
};

await graphClient.Policies.AuthorizationPolicy["authorizationPolicy"]
	.Request()
	.UpdateAsync(authorizationPolicy);

```