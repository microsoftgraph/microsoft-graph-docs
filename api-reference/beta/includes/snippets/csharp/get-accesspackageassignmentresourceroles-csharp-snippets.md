---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentResourceRoles = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentResourceRoles
	.Request()
	.GetAsync();

```