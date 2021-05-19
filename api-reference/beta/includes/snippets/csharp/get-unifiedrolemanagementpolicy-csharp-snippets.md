---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleManagementPolicy = await graphClient.Policies.RoleManagementPolicies["{unifiedRoleManagementPolicy-id}"]
	.Request()
	.GetAsync();

```