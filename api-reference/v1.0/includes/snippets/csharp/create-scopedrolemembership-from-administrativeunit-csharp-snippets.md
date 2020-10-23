---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var scopedRoleMembership = new ScopedRoleMembership
{
	RoleId = "roleId-value",
	RoleMemberInfo = new Identity
	{
		Id = "id-value"
	}
};

await graphClient.Directory.AdministrativeUnits["{id}"].ScopedRoleMembers
	.Request()
	.AddAsync(scopedRoleMembership);

```