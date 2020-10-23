---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResources = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{id}"].AccessPackageResources
	.Request()
	.GetAsync();

```