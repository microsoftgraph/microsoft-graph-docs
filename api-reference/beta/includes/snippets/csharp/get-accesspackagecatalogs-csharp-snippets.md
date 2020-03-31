---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageCatalogs = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageCatalogs
	.Request()
	.GetAsync();

```