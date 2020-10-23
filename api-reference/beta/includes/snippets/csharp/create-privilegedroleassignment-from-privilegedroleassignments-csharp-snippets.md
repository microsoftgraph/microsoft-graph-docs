---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var privilegedRoleAssignment = new PrivilegedRoleAssignment
{
	UserId = "userId-value",
	RoleId = "roleId-value"
};

await graphClient.PrivilegedRoleAssignments
	.Request()
	.AddAsync(privilegedRoleAssignment);

```