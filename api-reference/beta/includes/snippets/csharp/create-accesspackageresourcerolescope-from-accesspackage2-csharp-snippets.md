---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRoleScope = new AccessPackageResourceRoleScope
{
	AccessPackageResourceRole = new AccessPackageResourceRole
	{
		OriginId = "4",
		OriginSystem = "SharePointOnline",
		AccessPackageResource = new AccessPackageResource
		{
			Id = "53c71803-a0a8-4777-aecc-075de8ee3991"
		}
	},
	AccessPackageResourceScope = new AccessPackageResourceScope
	{
		Id = "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
		OriginId = "https://microsoft.sharepoint.com/portals/Community",
		OriginSystem = "SharePointOnline"
	}
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].AccessPackageResourceRoleScopes
	.Request()
	.AddAsync(accessPackageResourceRoleScope);

```