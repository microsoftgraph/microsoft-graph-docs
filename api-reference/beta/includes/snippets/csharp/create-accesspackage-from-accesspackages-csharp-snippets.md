---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackage = new AccessPackage
{
	CatalogId = "aa2f6514-3232-46e7-a08a-2411ad8d7128",
	DisplayName = "sales reps",
	Description = "outside sales representatives"
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages
	.Request()
	.AddAsync(accessPackage);

```