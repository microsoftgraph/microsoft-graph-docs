---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignment = new UnifiedRoleAssignment
{
	PrincipalId = "a98eb769-7bd4-4489-86f6-ad96e1d58b62",
	RoleDefinitionId = "b0f54661-2d74-4c50-afa3-1ec803f12efe",
	ResourceScope = "/"
};

await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.AddAsync(unifiedRoleAssignment);

```