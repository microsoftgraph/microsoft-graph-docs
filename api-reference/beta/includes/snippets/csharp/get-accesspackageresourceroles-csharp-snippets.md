---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRoles = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["15d889df-3eb8-4e9b-bfb4-b1908849aec4"].AccessPackageResourceRoles
	.Request()
	.Filter("(originSystem eq 'AadGroup' and accessPackageResource/id eq 'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')")
	.Expand("accessPackageResource/id%20eq%20'a35bef72-a8aa-4ca3-af30-f6b2ece7208f')")
	.GetAsync();

```