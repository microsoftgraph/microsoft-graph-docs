---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRoleScope = new AccessPackageResourceRoleScope
{
	AccessPackageResourceRole = new AccessPackageResourceRole
	{
		OriginId = "Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca",
		DisplayName = "Member",
		OriginSystem = "AadGroup",
		AccessPackageResource = new AccessPackageResource
		{
			Id = "1d08498d-72a1-403f-8511-6b1f875746a0",
			ResourceType = "O365 Group",
			OriginId = "b31fe1f1-3651-488f-bd9a-1711887fd4ca",
			OriginSystem = "AadGroup"
		}
	},
	AccessPackageResourceScope = new AccessPackageResourceScope
	{
		OriginId = "b31fe1f1-3651-488f-bd9a-1711887fd4ca",
		OriginSystem = "AadGroup"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{id}"].AccessPackageResourceRoleScopes
	.Request()
	.AddAsync(accessPackageResourceRoleScope);

```