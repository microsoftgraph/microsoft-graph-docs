---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleManagementPolicyAssignments = await graphClient.Policies.RoleManagementPolicyAssignments
	.Request()
	.GetAsync();

```