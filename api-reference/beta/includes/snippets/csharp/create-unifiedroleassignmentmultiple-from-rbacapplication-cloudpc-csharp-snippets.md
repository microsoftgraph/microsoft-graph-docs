---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentMultiple = new UnifiedRoleAssignmentMultiple
{
	DisplayName = "My test role assignment 1",
	Description = "My role assignment description",
	RoleDefinitionId = "b5c08161-a7af-481c-ace2-a20a69a48fb1",
	PrincipalIds = new List<String>()
	{
		"f8ca5a85-489a-49a0-b555-0a6d81e56f0d",
		"c1518aa9-4da5-4c84-a902-a31404023890"
	}
};

await graphClient.RoleManagement.CloudPC.RoleAssignments
	.Request()
	.AddAsync(unifiedRoleAssignmentMultiple);

```