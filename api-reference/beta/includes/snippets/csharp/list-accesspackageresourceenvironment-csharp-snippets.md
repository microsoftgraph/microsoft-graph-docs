---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceEnvironments = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceEnvironments
	.Request()
	.Filter("originSystem eq 'SharePointOnline'")
	.GetAsync();

```