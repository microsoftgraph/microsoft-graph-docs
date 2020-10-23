---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageCatalog = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs["{id}"]
	.Request()
	.GetAsync();

```