---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleManagementPolicies = await graphClient.Policies.RoleManagementPolicies
	.Request()
	.GetAsync();

```