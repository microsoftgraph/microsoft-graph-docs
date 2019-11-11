---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy
{
	AccessPackageId = "56ff43fd-6b05-48df-9634-956a777fce6d",
	DisplayName = "direct",
	Description = "direct assignments by administrator",
	IsEnabled = true
};

await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies
	.Request()
	.AddAsync(accessPackageAssignmentPolicy);

```