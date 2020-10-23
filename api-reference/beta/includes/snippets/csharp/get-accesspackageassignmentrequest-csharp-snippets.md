---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignmentRequest = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{id}"]
	.Request()
	.GetAsync();

```