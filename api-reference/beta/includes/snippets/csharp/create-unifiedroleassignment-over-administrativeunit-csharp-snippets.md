---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignment = new UnifiedRoleAssignment
{
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	PrincipalId = "f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
	DirectoryScopeId = "/administrativeUnits/5d107bba-d8e2-4e13-b6ae-884be90e5d1a"
};

await graphClient.RoleManagement.Directory.RoleAssignments
	.Request()
	.AddAsync(unifiedRoleAssignment);

```