
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Identity
var roleMemberInfo = new Identity
{
	Id = "id-value",
};

//create instance of ScopedRoleMembership
var scopedRoleMembers = new ScopedRoleMembership
{
	RoleId = "roleId-value",
	RoleMemberInfo = roleMemberInfo,
};

await graphClient.AdministrativeUnits["{id}"].ScopedRoleMembers
	.Request()
	.AddAsync(scopedRoleMembers);

```