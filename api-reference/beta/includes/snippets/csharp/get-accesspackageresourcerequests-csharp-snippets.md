---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageResourceRequests = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests
	.Request()
	.GetAsync();

```