---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identitySecurityDefaultsEnforcementPolicy = new IdentitySecurityDefaultsEnforcementPolicy
{
	IsEnabled = false
};

await graphClient.Policies.IdentitySecurityDefaultsEnforcementPolicy
	.Request()
	.UpdateAsync(identitySecurityDefaultsEnforcementPolicy);

```