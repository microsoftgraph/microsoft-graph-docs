---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignments = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignments
	.Request()
	.GetAsync();

```