---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var effectiveRules = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"].EffectiveRules
	.Request()
	.GetAsync();

```